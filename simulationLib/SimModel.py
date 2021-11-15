"""
    Danrui Li
    2021.02
    MassMotion只能在Python 3.4中运行
"""
import massmotion_10_6 as mm
import time
import os
import random

from simulationLib import setProject, postEvaluate as PostEvaluate
from simulationLib.resultMgr import ResultManager
from simulationLib.instantEvaluate import InstantEvaluate
from simulationLib.readMmdb import MassMotionDatabase


class SimModel:
    # Parameters
    duration_in_seconds = 7 * 60
    replicate_num = None
    storage_dir = None
    run_num = None
    project_path = None
    result_mgr = None

    def __init__(self, project_file_path=None, working_dir=None, **param):
        # Initialize SDK
        print("start MassMotion initialization...")
        start_time = time.time()
        mm.Sdk.init()
        print("Init time: ", time.time() - start_time)

        self.project_path = project_file_path

        # Create data storage path
        folder_name = time.strftime("%Y_%m_%d %H_%M_%S", time.localtime())
        if working_dir:
            self.storage_dir = working_dir + r'\test ' + folder_name
        else:
            self.storage_dir = os.getcwd() + r'\test ' + folder_name
        if not os.path.exists(self.storage_dir):
            os.makedirs(self.storage_dir)
            print('make directory: ' + self.storage_dir)

    def __del__(self):
        mm.Sdk.fini()
        print('MassMotion closed')

    def run(self, params, project_path):
        """
        Run several simulations based on a single given environment
        [WARNING]profile的速度和半径都没法调，就是个摆设
        """
        sim_i = 0
        avg_res = None
        self.result_mgr.reset()

        while ((not self.result_mgr.terminate) or (sim_i < 5)) and (sim_i < self.replicate_num):
            # 生成模拟项目，配置建筑环境，模拟选项
            # Create project and set simulation options
            project, simulation_options, exit_portal_ids, flows = \
                setProject.main(params, project_path, self.duration_in_seconds)
            simulation_options.add_extra_goals(exit_portal_ids)
            simulation_options.set_random_seed(random.randint(0, 2000))

            # 创建模拟的数据库文件
            # Create and configure the simulation file
            test_label = 'Test' + str(self.run_num) + '-' + str(sim_i)
            database_path = self.storage_dir + "/" + test_label + '.mmdb'
            trajectory_path = self.storage_dir + "/" + test_label + '-tra.csv'
            simulation = mm.Simulation.create(project, test_label, database_path, simulation_options)
            sim_id = project.get_object(test_label).get_id()

            # 运行模拟
            # Run the simulation
            print("Running" + test_label)
            frame_summary = None
            # 设置即时结果评价器
            instant_evaluator = InstantEvaluate(params['ins_measure'], params['ins_measure_config'])
            while not simulation.is_done():
                # 针对每一个行人流对象，执行其释放行人、更新状态的动作
                for i in range(len(flows)):
                    flow = flows[i]
                    flow.release(simulation)
                    if frame_summary is not None:
                        flow.update_existing(frame_summary, exit_portal_ids)
                        flow.update_group_status(frame_summary, simulation)
                # 针对当前帧，运行即时结果评价器一次
                instant_evaluator.update(simulation)
                # 进入下一帧
                frame_summary = simulation.step()

            # Evaluation
            result = PostEvaluate.get_results(project, test_label, sim_id, params['post_measure'])
            result.update(instant_evaluator.get_result())

            # 把本次模拟的结果加入到结果管理器中，并返回当前输入条件下的历次模拟的均值结果
            avg_res = self.result_mgr.new_sim_result(result, test_label, self.run_num)

            if params['save_trajectories']:
                db = MassMotionDatabase(database_path)
                db.extract(trajectory_path)

            # 单次模拟结束
            del flows
            del instant_evaluator
            project.close()
            sim_i += 1

        # 单组输入条件的历次模拟结束
        # 把本组模拟的平均结果加入到平均结果管理器中
        if avg_res:
            self.result_mgr.new_avg_result(avg_res)
        self.run_num += 1

    def inputs_list_processing(self, params, start_num, end_num, replicate_num=3):
        """
        Run simulations based on a list of inputs
        [Notice] Only one application can ever be registered over the life of the program.
        """
        self.run_num = start_num
        self.replicate_num = replicate_num
        self.result_mgr = ResultManager(self.storage_dir,
                                        params[0]['save_flow_data'],
                                        params[0]['enable_auto_terminate'],
                                        params[0]['measure'])
        for param in params[start_num:end_num + 1]:
            self.run(project_path=self.project_path, params=param)
        self.result_mgr.save_result()


if __name__ == "__main__":
    mod = SimModel('../mmFiles/simp.mm', 'F:/MassMotion Data')
    del mod
