from simulationLib.SimModel import SimModel
import config
from simulationLib import FileIO


def run_from_input_list():
    model = SimModel(**config.basic(env_config='config/SA-env.json'))
    p0 = FileIO.read_inputs('input.csv')
    p = config.combine(ped_param_list=p0, env_config='config/SA-env.json')
    model.inputs_list_processing(p, start_num=0, end_num=199, replicate_num=15)
    del model


if __name__ == "__main__":
    run_from_input_list()
