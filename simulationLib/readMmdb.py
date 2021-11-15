import massmotion_10_6 as mm
from simulationLib import FileIO


class MassMotionDatabase:
    data = None

    def __init__(self, file_path):
        self.data = mm.Database.open(file_path)

    @staticmethod
    def __get_xyz(vec: mm.Vec3d):
        return vec.get_x(), vec.get_y(), vec.get_z()

    def extract(self, file_path: str = ''):
        length = int(self.data.get_last_frame())
        res = []
        for i in range(length):
            agent_data = self.data.get_frame_data(i)
            if len(agent_data) > 0:
                for agent in agent_data:
                    position = agent.get_position()
                    x, y, z = self.__get_xyz(position)
                    if file_path != '':
                        agent_res = {
                            'frame': i, 'id': agent.get_agent_id(),
                            'radius': '{:.2f}'.format(agent.get_radius()),
                            'speed': '{:.2f}'.format(agent.get_speed()),
                            'density': '{:.3f}'.format(agent.get_density()),
                            'x': '{:.4f}'.format(x), 'y': '{:.4f}'.format(y), 'z': '{:.4f}'.format(z),
                        }
                    else:
                        agent_res = {
                            'frame': i, 'id': agent.get_agent_id(),
                            'radius': agent.get_radius(),
                            'speed': agent.get_speed(),
                            'density': agent.get_density(),
                            'x': x, 'y': y, 'z': z,
                        }
                    res.append(agent_res)
        if file_path != '':
            FileIO.save_results(res, file_path)
            return None
        else:
            return res


if __name__ == "__main__":
    db = MassMotionDatabase('Test0-0.mmdb')
    db.extract('extracted trajectories.csv')
