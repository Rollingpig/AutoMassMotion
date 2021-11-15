import random
import json
from simulationLib import FileIO


def read_json(path):
    f = open(path, )
    data = json.load(f)
    f.close()
    return data


def basic(env_config: str):
    general = read_json('config/general.json')
    env = read_json(env_config)
    env.update(general)
    return env


def combine(ped_param_list: list, env_config: str):
    general = read_json('config/general.json')
    env = read_json(env_config)
    result = []
    for ped_param in ped_param_list:
        if type(ped_param) == str:
            p = read_json(ped_param)
        else:
            p = ped_param
        p.update(env)
        p.update(general)
        result.append(p)
    return result


def random_sampling(problem_json_path, length, env_json_path, inputs_save_path=None):
    problem = read_json(problem_json_path)
    inputs = []
    for i in range(length):
        p = {}
        for j, item in enumerate(problem['names']):
            p[item] = random.uniform(float(problem['bounds'][j][0]), float(problem['bounds'][j][1]))
        inputs.append(p)

    if inputs_save_path:
        FileIO.save_results(data=inputs, file_path=inputs_save_path)

    env = read_json(env_json_path)
    general = read_json('config/general.json')
    for ped_param in inputs:
        ped_param.update(env)
        ped_param.update(general)
    return inputs


if __name__ == "__main__":
    t = random_sampling('SA-prob.json', 2, 'newSA-env.json')
    print(t)
