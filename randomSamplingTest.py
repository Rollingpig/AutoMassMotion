from simulationLib.SimModel import SimModel
import config


def random_sampling_test(length=200):
    model = SimModel(**config.basic(env_config='config/SA-env.json'))
    p = config.random_sampling('config/SA-prob.json', length, 'config/SA-env.json',
                               inputs_save_path=model.storage_dir + '/random_inputs.csv')
    model.inputs_list_processing(p, start_num=0, end_num=length - 1, replicate_num=15)
    del model


if __name__ == "__main__":
    random_sampling_test()
