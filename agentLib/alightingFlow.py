"""
    The code below partly originates from Python examples in MassMotion tutorials,
    as detailed in docstrings of the functions
"""
import massmotion_10_6 as mm
import random
import agentLib.groups as group_theory
from agentLib.baseFlow import BaseFlow
import math


class AlightingFlow(BaseFlow):
    # Theoretical constant
    spd_ratio_2_ppl_group = 0.836
    spd_ratio_3_ppl_group = 0.836
    common_radius = 0.25
    trolley_radius = 0.45
    grp_ratio_2_ppl = 0.52
    # grp_ratio_2_ppl = 0

    # Environment params
    gate_num = 8
    origin_ids = None
    destination_ids = None

    # Inputs
    # max_interval = None
    # min_interval = None
    avg_interval = None
    amount = None
    frame_rate = None
    profile = None
    profile_luggage = None
    trolley_case_share = None
    avg_spd = None
    std_spd = None

    # Agent Release Control
    current_frame = None
    release_stack = None

    # Group Control
    groups = None
    agent_desire_speed = None
    group_stack = None
    leader_stack = None
    group_info = None

    def __init__(self, frame_rate, amount, avg_interval, profile, profile_luggage, avg_spd, std_spd,
                 gate_num, origin_ids, destination_ids, grp_ratio=0.35, trolley_case_share=0.5):
        # Environment params
        self.gate_num = gate_num
        self.origin_ids = origin_ids
        self.destination_ids = destination_ids

        # Inputs
        self.amount = amount
        self.avg_interval = avg_interval
        self.profile = profile
        self.profile_luggage = profile_luggage
        self.trolley_case_share = trolley_case_share
        self.avg_spd = avg_spd
        self.std_spd = std_spd

        # Agent Release Control
        self.frame_rate = frame_rate
        self.current_frame = 0
        self.release_stack = self._generate_release_stack()

        # Group Control
        self.group_stack, self.group_info = self._generate_group_stack(
            grp_ratio * self.grp_ratio_2_ppl, grp_ratio * (1 - self.grp_ratio_2_ppl))
        self.groups = {}
        self.agent_desire_speed = {}
        self.leader_stack = [0 for i in range(gate_num)]

    def _get_profile(self):
        r = random.random()
        if r < self.trolley_case_share:
            return self.profile_luggage
        else:
            return self.profile

    def _get_spd(self):
        s = 0
        while (s < 0.25) or (s > 5):
            s = random.gauss(self.avg_spd, self.std_spd)
        return s

    def _generate_release_stack(self):
        """
        Create a stack for each gate,
        which stores information about in which frame to release a new agent.
        :return:
        """
        time_stack = []
        for i in range(self.gate_num):
            release_list = [int(self.avg_interval * self.frame_rate)]
            for j in range(self.amount - 1):
                t = int(self.avg_interval * self.frame_rate)
                release_list.append(release_list[-1] + t)
            release_list.reverse()
            time_stack.append(release_list)
        return time_stack

    def _generate_group_stack(self, ppl2_ratio, ppl3_ratio):
        """
        Create a property stack for each gate,
        which stores information about if the pedestrian is a single one, a leader, or a follower.
        :config ppl2_ratio:  the proportion of 2-people group
        :config ppl3_ratio:  the proportion of 3-people group
        :return:
        """
        group_stack = []
        group_info = []
        for i in range(self.gate_num):
            group_size_list = []
            p2_group_num = int(math.floor(self.amount * ppl2_ratio / 2))
            p3_group_num = int(math.floor(self.amount * ppl3_ratio / 3))
            p1_group_num = self.amount - p2_group_num * 2 - p3_group_num * 3
            for j in range(p1_group_num):
                group_size_list.append(1)
            for j in range(p2_group_num):
                group_size_list.append(2)
            for j in range(p3_group_num):
                group_size_list.append(3)
            random.shuffle(group_size_list)

            ped_group_id_list = []
            for group_size in group_size_list:
                group_info.append({
                    'group_size': group_size,
                    'entered_sim': 0,
                })
                for p in range(group_size):
                    ped_group_id_list.append(len(group_info)-1)
            ped_group_id_list.reverse()
            group_stack.append(ped_group_id_list)

        return group_stack, group_info

    def add_ped(self, group_id):
        size = self.group_info[group_id]['group_size']
        entered = self.group_info[group_id]['entered_sim']
        if size == 1:
            ped_type = 'single_ped'
        elif (size == 2) and (entered == 0):
            ped_type = '2_leader'
        elif (size == 2) and (entered == 1):
            ped_type = '2_follower'
        elif (size == 3) and (entered == 0):
            ped_type = '3_leader'
        elif (size == 3) and (entered == 1):
            ped_type = '3_follower1'
        else:
            ped_type = '3_follower2'

        self.group_info[group_id]['entered_sim'] += 1
        return ped_type

    def release(self, simulation):
        """
        Release the agents according to the release stack
        This function should be called when the simulation enters a new frame
        :config simulation: MassMotion Simulation Object
        :return:
        """
        for i in range(self.gate_num):
            if len(self.release_stack[i]) > 0:
                if self.release_stack[i][-1] == self.current_frame:
                    # create new agent
                    agent_request = mm.AgentRequest(self.origin_ids[i])
                    agent_request.set_goal(self.destination_ids[0])
                    agent_request.set_profile(self._get_profile())

                    group_id = self.group_stack[i][-1]
                    ped_type = self.add_ped(group_id)
                    # print(ped_type)
                    if (ped_type == '2_leader') or (ped_type == '3_leader'):
                        group_color = mm.Color(random.random(), random.random(), random.random())
                        agent_request.set_color(group_color)
                        new_agent = simulation.request_new_agent(agent_request)
                        spd = self._get_spd()
                        if ped_type == '2_leader':
                            spd = spd * self.spd_ratio_2_ppl_group
                        else:
                            spd = spd * self.spd_ratio_3_ppl_group
                        new_agent.set_desired_unconstrained_speed(spd)
                        self.agent_desire_speed[new_agent] = spd
                        self.groups[new_agent] = {}
                        self.group_info[group_id]['color'] = group_color
                        self.leader_stack[i] = new_agent
                    elif ped_type == 'single_ped':
                        new_agent = simulation.request_new_agent(agent_request)
                        spd = self._get_spd()
                        new_agent.set_desired_unconstrained_speed(spd)
                    else:
                        # group follower
                        leader = self.leader_stack[i]
                        agent_request.set_color(self.group_info[group_id]['color'])
                        new_agent = simulation.request_new_agent(agent_request)
                        new_agent.set_desired_unconstrained_speed(self.agent_desire_speed[leader])
                        self.agent_desire_speed[new_agent] = new_agent.get_desired_unconstrained_speed()
                        if ped_type == '3_follower2':
                            self.groups[leader][new_agent] = -1
                        else:
                            self.groups[leader][new_agent] = 1

                    self.release_stack[i].pop()
                    self.group_stack[i].pop()

        self.current_frame += 1

    def set_follower_goal(self, follower, leader, group, configuration):
        """The code originates from Python examples in MassMotion tutorials"""
        leader_position = leader.get_position()
        leader_heading = leader.get_heading()
        leader_velocity = leader.get_velocity()
        if follower.get_current_floor_id() == leader.get_current_floor_id():
            index = group[follower]
            target_position = leader_position + configuration[index].rotated_by(
                leader_heading) + leader_velocity * group_theory.lookahead_time
            displacement_to_target = target_position - follower.get_position()
            distance_to_target = displacement_to_target.get_length()
            goal_direction = displacement_to_target.get_normalized()
            follower.set_goal_direction_override(goal_direction)
            follower.set_desired_unconstrained_speed(distance_to_target / group_theory.lookahead_time)
        else:
            follower.clear_goal_direction_override()

    def update_group_status(self, frame_summary, simulation):
        """
        Update group status and control the followers
        This function should be called when the simulation enters a new frame
        Part of the code originates from Python examples in MassMotion tutorials
        :config frame_summary:
        :config simulation:
        :return:
        """
        # Remove groups as the leader exits the simulation
        for agent in frame_summary.get_deleted_agents():
            if agent in self.groups:
                group = self.groups.pop(agent)
                for follower in group:
                    if follower.exists():
                        follower.clear_goal_direction_override()

        # Update groups
        for leader in self.groups:
            group = self.groups[leader]
            if len(group) > 0:
                nearby_agents = simulation.get_agents_near_point(leader.get_position(), group_theory.test_radius, 1)
                neighbor_count = 0
                for nearby_agent in nearby_agents:
                    if nearby_agent not in group:
                        neighbor_count += 1
                leader_density = neighbor_count / group_theory.test_area
                configuration = group_theory.get_configuration(1 + len(group), leader_density)
                for follower in group:
                    if follower.exists():
                        self.set_follower_goal(follower, leader, group, configuration)

        # switch leader and follower every 0.5 sec,
        # so as to cancel out the improper repulsive forces which followers impose to leaders
        if self.current_frame % 6 == 0:
            temp_group = {}
            for leader in self.groups:
                group = self.groups[leader]
                if len(group) == 1:
                    for follower in group:
                        if follower.exists():
                            temp_group[follower] = {}
                            temp_group[follower][leader] = -self.groups[leader][follower]
                            follower.clear_goal_direction_override()
                            follower.set_desired_unconstrained_speed(self.agent_desire_speed[follower])
                            try:
                                position = self.leader_stack.index(leader)
                                self.leader_stack[position] = follower
                            except ValueError:
                                a = 0
                        else:
                            temp_group[leader] = group
                else:
                    temp_group[leader] = group
            self.groups = temp_group

    def update_existing(self, frame_summary, exit_portal_ids):
        if frame_summary is not None:
            for agent in frame_summary.get_created_agents():
                agent.clear_tasks()
                agent.add_task_as_active(mm.SeekPortalTask(exit_portal_ids))
                agent.add_task_as_last(mm.ExitTask())

