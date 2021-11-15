import massmotion_10_6 as mm


class TimeOccupiedMap:
    result_map = None
    temp_map = None
    map_boundary = (137, -9, 145, -3)
    size = None
    current_frame = None
    fps = 5
    sampling_period = 5

    normal_fill = [
        [0, 0, 0, 0, 0, 0, 0],
        [0, 0, 1, 1, 1, 0, 0],
        [0, 1, 1, 1, 1, 1, 0],
        [0, 1, 1, 1, 1, 1, 0],
        [0, 1, 1, 1, 1, 1, 0],
        [0, 0, 1, 1, 1, 0, 0],
        [0, 0, 0, 0, 0, 0, 0],
    ]
    luggage_fill = [
        [0, 0, 1, 1, 1, 0, 0],
        [0, 1, 1, 1, 1, 1, 0],
        [1, 1, 1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1, 1, 1],
        [0, 1, 1, 1, 1, 1, 0],
        [0, 0, 1, 1, 1, 0, 0],
    ]

    def __init__(self, boundary: list = None, sampling_period: int = 5):
        self.current_frame = 0
        self.sampling_period = sampling_period
        if boundary:
            self.map_boundary = (boundary[0], boundary[1], boundary[2], boundary[3])
        x1, z1, x2, z2 = self.map_boundary
        self.size = (int(abs(x2 - x1)) * 10, int(abs(z2 - z1)) * 10)
        self.result_map = [[0 for j in range(self.size[1])] for i in range(self.size[0])]
        self.temp_map = [[0 for j in range(self.size[1])] for i in range(self.size[0])]

    @staticmethod
    def __get_xyz(vec: mm.Vec3d):
        return vec.get_x(), vec.get_y(), vec.get_z()

    def __fill(self, x, z, fill):
        for i, rx in enumerate(range(x - 3, x + 3)):
            for j, rz in enumerate(range(z - 3, z + 3)):
                try:
                    self.temp_map[rx][rz] += fill[i][j]
                except IndexError:
                    continue
        return None

    def __draw_temp_map(self, x, z, r):
        x1, z1, x2, z2 = self.map_boundary
        if (x1 < x < x2) and (z1 < z < z2):
            tx = int((x - x1) * 10)
            tz = int((z - z1) * 10)
            if r == 0.25:
                self.__fill(tx, tz, self.normal_fill)
            else:
                self.__fill(tx, tz, self.luggage_fill)

    def __update_res_map(self):
        for j in range(self.size[1]):
            for i in range(self.size[0]):
                if self.temp_map[i][j] > 0:
                    self.result_map[i][j] += 1
        self.temp_map = [[0 for j in range(self.size[1])] for i in range(self.size[0])]

    def update(self, simulation: mm.Simulation):
        if self.current_frame % self.sampling_period == 0:
            for agent in simulation.get_all_agents():
                position = agent.get_position()
                radius = agent.get_radius()
                x, y, z = self.__get_xyz(position)
                self.__draw_temp_map(x, z, radius)
            self.__update_res_map()
        self.current_frame += 1
        return None

    def get_area(self, time_threshold):
        res = 0
        for j in range(self.size[1]):
            for i in range(self.size[0]):
                if self.result_map[i][j] >= time_threshold * self.fps / self.sampling_period:
                    res += 1
        return res / 100

    def get_results(self):
        res = {
            'occupied_120': self.get_area(120),
            'CA': self.get_area(90),
            'occupied_60': self.get_area(60),
        }
        return res


class InstantEvaluate:
    evaluators = []

    def __init__(self, ins_measure: list, config):
        if 'time_occupied' in ins_measure:
            t = ins_measure.index('time_occupied')
            self.evaluators.append(TimeOccupiedMap(**config[t]))

    def update(self, simulation: mm.Simulation):
        for evaluator in self.evaluators:
            evaluator.update(simulation)

    def get_result(self):
        result = {}
        for evaluator in self.evaluators:
            result.update(evaluator.get_results())
        return result
