from simulationLib.SimModel import SimModel
import config


def validation_test():
    p = config.combine(ped_param_list=['config/SA-Validation-ped.json', ], env_config='config/SA-Validation-env.json')
    model = SimModel(**p[0])
    model.inputs_list_processing(p, start_num=0, end_num=0, replicate_num=30)
    del model


if __name__ == "__main__":
    validation_test()
