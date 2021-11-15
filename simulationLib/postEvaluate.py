"""
    Danrui Li
    2020.10
"""
import massmotion_10_6 as mm


def get_values_from_series(series_list):
    x_data = []
    y_data = []
    for series in series_list:
        x_data_points = []
        y_data_points = []
        for vector in series.get_values():
            x_data_points.append(vector.get_x())
            y_data_points.append(vector.get_z())
        x_data.append(x_data_points)
        y_data.append(y_data_points)
    return x_data, y_data


def stair_escalator_ratio(project, test_label, sim_id):
    def get_data(query):
        query.clear_filter()
        flow_count_graph = query.evaluate()
        _, flow_count_list = get_values_from_series(flow_count_graph.get_series())
        flow_list = flow_count_list[0]
        flow_by_sec = [sum(flow_list[i + j * 5] for i in range(5)) for j in range(len(flow_list) // 5)]
        flow_seq = [{'flow': f} for f in flow_by_sec]
        total_num = sum(flow_list)
        return total_num

    flow_count_graph_query = project.create_flow_count_graph_query("FlowCount" + test_label, sim_id)
    flow_count_graph_query.set_transitions([mm.Transition.area_exit(project.get_escalator('escalator1').get_id()), ])
    escalator = get_data(flow_count_graph_query)

    flow_count_graph_query2 = project.create_flow_count_graph_query("FlowCount2" + test_label, sim_id)
    flow_count_graph_query2.set_transitions([mm.Transition.area_exit(project.get_stair('stair1').get_id()), ])
    stair = get_data(flow_count_graph_query2)

    res = {
        "stair_num": stair,
        "escalator_num": escalator,
        "s_all_ratio": stair/(escalator+stair),
        # Others
        # 'flow_seq': flow_seq,
    }
    return res


def flow_count_process(project, test_label, sim_id, param):
    # Flow Count Graph Analysis
    flow_count_graph_query = project.create_flow_count_graph_query("FlowCount" + test_label, sim_id)
    if param['type'] == "one-volume":
        flow_count_graph_query.set_transitions([mm.Transition.area_exit(project.get_volume('Volume_cross').get_id()), ])
    elif param['type'] == "one-portal":
        flow_count_graph_query.set_transitions([mm.Transition.sim_exit(project.get_portal('destination1').get_id()), ])
    else:
        flow_count_graph_query.set_transitions(
            [mm.Transition.sim_exit(project.get_portal('destination1').get_id()),
             mm.Transition.sim_exit(project.get_portal('destination2').get_id())])
    flow_count_graph_query.clear_filter()
    flow_count_graph = flow_count_graph_query.evaluate()
    _, flow_count_list = get_values_from_series(flow_count_graph.get_series())
    flow_list = flow_count_list[0]

    # Aggregate the results
    bin_size = 41
    flow_by_sec = [sum(flow_list[i + j * 5] for i in range(5)) for j in range(len(flow_list) // 5)]

    # Max Flow
    # Add up all the exiting agents in the range of 41 seconds
    flow_30s_sum = [sum(flow_by_sec[i+j] for i in range(-bin_size // 2, bin_size // 2)) for j in range(bin_size // 2, len(flow_by_sec) - bin_size // 2 -1)]
    max_position = 0
    max_flow = 0
    for i in range(len(flow_30s_sum)):
        if max_flow < flow_30s_sum[i]:
            max_position = i
            max_flow = flow_30s_sum[i]
    max_time = max_position + bin_size // 2

    # Major flow duration
    quantile_20, quantile_80, quantile_90, quantile_50 = 0, 0, 0, 0
    total_num = sum(flow_list)
    cumulative_by_sec = [sum(flow_by_sec[i] for i in range(j)) for j in range(len(flow_by_sec))]
    for i in range(len(cumulative_by_sec)):
        if cumulative_by_sec[i] > total_num * 0.2:
            quantile_20 = i
            break
    for i in range(len(cumulative_by_sec)):
        if cumulative_by_sec[i] > total_num * 0.8:
            quantile_80 = i
            break

    flow_seq = [{'flow': f} for f in flow_by_sec]
    res = {
        # Flow measures
        'MFR': max_flow / bin_size,
        'MT': float(quantile_80 - quantile_20),
        # Others
        'flow_seq': flow_seq,
    }
    return res


def agent_summary_process(project, test_label, sim_id):
    agent_summary_table_query = project.create_agent_summary_table_query('AgentSummary' + test_label, sim_id)
    agent_summary_table = agent_summary_table_query.evaluate()
    total_agents = agent_summary_table.get_row_count()
    duration_str = [agent_summary_table.get_string_value(i, 7) for i in range(total_agents)]
    distance_str = [agent_summary_table.get_string_value(i, 8) for i in range(total_agents)]
    desired_spd_str = [agent_summary_table.get_string_value(i, 9) for i in
                       range(agent_summary_table.get_row_count())]
    durations = [int(d_str.split(':')[0]) * 3600 + int(d_str.split(':')[1]) * 60 + int(d_str.split(':')[2]) for
                 d_str in duration_str]
    distances = [float(d_str) for d_str in distance_str]
    desired_spds = [float(d_str) for d_str in desired_spd_str]
    avg_spds = [distances[i] / durations[i] for i in range(len(durations))]
    spd_ratios = [avg_spds[i] / desired_spds[i] for i in range(len(avg_spds))]
    time_surge = [desired_spds[i] / avg_spds[i] for i in range(len(avg_spds))]
    res3 = {
        'avg_duration': float(sum(durations) / len(durations)),
        'avg_a_spd': sum(avg_spds) / len(avg_spds),
        'SR': sum(spd_ratios) / len(spd_ratios),
        'ATR': sum(time_surge) / len(time_surge),
        'avg_dsr_spd': sum(desired_spds)/len(desired_spds),
    }
    return res3, total_agents


def population_graph_process(project, test_label, sim_id, param):
    area = 106.5
    los_e_density = 1.075
    population_count_graph_query = project.create_population_count_graph_query('PopulationCount' + test_label, sim_id)
    if param['volume_nr'] == 1:
        volume_id = [project.get_volume(item).get_id() for item in ['Volume']]
    else:
        volume_id = [project.get_volume(item).get_id() for item in ['Volume', 'Volume1']]
    population_count_graph_query.set_area_ids(volume_id)

    agent_filter0 = mm.AgentFilter.in_area(volume_id[0])
    population_count_graph_query.set_agent_filter(agent_filter0)
    population_count_graph = population_count_graph_query.evaluate()
    _, pop_count_list = get_values_from_series(population_count_graph.get_series())
    pop_count_list0 = pop_count_list[0]

    bin_size = 31

    if param['volume_nr'] == 2:
        agent_filter1 = mm.AgentFilter.in_area(volume_id[1])
        population_count_graph_query.set_agent_filter(agent_filter1)
        population_count_graph = population_count_graph_query.evaluate()
        _, pop_count_list = get_values_from_series(population_count_graph.get_series())
        pop_count_list1 = pop_count_list[0]
        pop_count_list = [pop_count_list0[i]+pop_count_list1[i] for i in range(len(pop_count_list1))]
    else:
        area = area / 2
        pop_count_list = pop_count_list0

    max_pop = max(p for p in pop_count_list)
    pop_31s_avg = [sum(pop_count_list[i + j] for i in range(-bin_size // 2, bin_size // 2)) / bin_size for j in
                   range(bin_size // 2, len(pop_count_list) - bin_size // 2 - 1)]
    max_31s_pop = max(p for p in pop_31s_avg)

    res4 = {
        'max_pop': max_pop,
        'max_pop_31s_avg': max_31s_pop,
        'MDB': max_31s_pop / area,
    }
    return res4


def get_results(project, test_label, sim_id, measure_config):
    result = {}
    # Agent Summary Table Analysis
    r, total_agents = agent_summary_process(project, test_label, sim_id)
    result.update(r)
    result.update(stair_escalator_ratio(project, test_label, sim_id))

    if 'flow_count' in measure_config.keys():
        # Flow Count Graph Analysis
        r = flow_count_process(project, test_label, sim_id, measure_config['flow_count'])
        result.update(r)
    if 'agent_summary' in measure_config.keys():
        a = 1
    if 'population_count' in measure_config.keys():
        # Population Count Graph
        result.update(population_graph_process(project, test_label, sim_id, measure_config['population_count']))

    # Store results
    return result
