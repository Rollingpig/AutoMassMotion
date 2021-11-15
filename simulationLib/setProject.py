import massmotion_10_6 as mm
import agentLib


def open_train_platform(duration_in_seconds, project_path, entrance_portal_labels, exit_portal_labels,
                        stair_labels, escalator_labels, **params):
    # Create project and set simulation options
    project = mm.Project.open(project_path)
    project.set_duration_in_seconds(duration_in_seconds)
    frame_rate = project.get_frame_rate()
    simulation_options = mm.SimulationOptions()

    # Get Entrance portals, Exit portals and stairs
    entrance_portal_ids = [project.get_portal('origin' + j).get_id() for j in entrance_portal_labels]
    exit_portal_ids = [project.get_portal('destination' + j).get_id() for j in exit_portal_labels]
    stair_ids = [project.get_stair('stair' + j).get_id() for j in stair_labels]
    escalator_ids = [project.get_escalator('escalator' + j).get_id() for j in escalator_labels]

    return project, simulation_options, entrance_portal_ids, exit_portal_ids, frame_rate, stair_ids, escalator_ids


def set_train_platform(params, project_path, duration_in_seconds):
    project, simulation_options, entrance_portal_ids, \
        exit_portal_ids, frame_rate, stair_ids, escalator_ids = open_train_platform(duration_in_seconds, project_path, **params)

    # Set pedestrian profile
    profile = project.get_profile('DefaultProfile')
    profile.set_speed_distribution(mm.Distribution.create_normal(
        dMin=0.25, dMax=5,
        dMu=params['avg_spd'], dSigma=params['std_spd']))
    profile_lu = project.get_profile('LuggageProfile')
    profile_lu.set_speed_distribution(mm.Distribution.create_normal(
        dMin=0.25, dMax=5,
        dMu=params['avg_spd'], dSigma=params['std_spd']))

    # Set stair property
    for stair_id in stair_ids:
        stair = project.get_object(stair_id)
        stair.set_distance_added(params['str_cst'])

    """for escalator_id in escalator_ids:
        escalator = project.get_object(escalator_id)
        escalator.set_distance_added(params['esc_cst'])"""

    # Set up pedestrian generator
    flow = agentLib.AlightingFlow(
        frame_rate=frame_rate,
        amount=params['ped_amount'],
        avg_interval=params['avg_int'],
        profile=profile.get_id(),
        profile_luggage=profile_lu.get_id(),
        avg_spd=params['avg_spd'],
        std_spd=params['std_spd'],
        gate_num=len(entrance_portal_ids),
        origin_ids=entrance_portal_ids,
        destination_ids=exit_portal_ids,
        grp_ratio=params['grp_shr'],
        trolley_case_share=params['trl_shr'],
    )

    return project, simulation_options, exit_portal_ids, [flow]


def main(params, project_path, duration_in_seconds):
    if params['type'] == 'train_platform':
        return set_train_platform(params, project_path, duration_in_seconds)
