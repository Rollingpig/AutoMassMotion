from simulationLib import FileIO


class ResultManager:
    raw_result = None
    avg_result = None
    save_flow_data = False
    auto_terminate = True
    storage_dir = None
    measures = None
    temp_stack = None
    terminate = False

    def __init__(self, storage_dir, save_flow_data=False, auto_terminate=True, measure=None):
        self.raw_result = []
        self.avg_result = []
        self.save_flow_data = save_flow_data
        self.auto_terminate = auto_terminate
        self.storage_dir = storage_dir
        self.temp_stack = []
        if not measure:
            measure = ['ATR', 'MDB', 'MFR']
        self.measures = measure

    def new_sim_result(self, new_result: dict, test_label: str, res_id: int):
        # Add new raw result to the manager
        if self.save_flow_data:
            FileIO.save_results(data=new_result['flow_seq'],
                                file_path=self.storage_dir + "/" + test_label + '_flow.csv')
        if 'flow_seq' in new_result.keys():
            del new_result['flow_seq']
        new_result['id'] = res_id
        self.raw_result.append(new_result)

        # Judge whether to stop replicating simulation
        if not self.auto_terminate:
            terminate = False
        else:
            if len(self.temp_stack) < 3:
                terminate = False
            else:
                terminate = True
                for output in self.measures:
                    s = sum([self.temp_stack[i][output] for i in range(len(self.temp_stack))])
                    pre_avg = s / len(self.temp_stack)
                    cur_avg = (s + new_result[output]) / (len(self.temp_stack) + 1)
                    add = (abs(pre_avg - cur_avg) / cur_avg) * 100
                    print(output, add)
                    if add > 0.5:
                        terminate = False

        self.terminate = terminate
        self.temp_stack.append(new_result)

        # Calculate the average result
        avg_result = {}
        for key in self.temp_stack[0].keys():
            avg_result[key] = sum([res[key] for res in self.temp_stack]) / len(self.temp_stack)
            avg_result['rep_num'] = len(self.temp_stack)

        return avg_result

    def new_avg_result(self, result):
        self.avg_result.append(result)
        self.temp_stack = []

    def reset(self):
        self.temp_stack = []
        self.terminate = False

    def save_result(self):
        FileIO.save_results(data=self.raw_result, file_path=self.storage_dir + "/" + 'raw_result.csv')
        FileIO.save_results(data=self.avg_result, file_path=self.storage_dir + "/" + 'result.csv')