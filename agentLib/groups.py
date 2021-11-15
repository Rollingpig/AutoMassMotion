from massmotion_10_6 import *
import random
import math


density_low = 0.03
density_med = 0.25

distance_2_low = 0.78
distance_3_low = (0.79 + 0.81) / 2
distance_4_low = (0.87 + 0.93 + 0.80) / 3

distance_2_med = 0.54
distance_3_med = (0.55 + 0.62) / 2
distance_4_med = (0.67 + 0.66 + 0.64) / 2

density_a = 0.309
density_d = 0.719
density_f = 2.174

test_radius = 5
test_area = math.pi * test_radius * test_radius

lookahead_time = 1

max_offset = 2
max_slowdown_factor = 0.5
max_speedup_factor = 2


def get_average_distance(density):
    if density == 0:
        return float('inf')
    else:
        return math.sqrt(2 / (math.sqrt(3) * density))


def interpolate(x_low, x_high, y_low, y_high, x):
    t = max(0, min((x - x_low) / (x_high - x_low), 1))
    return y_low + t * (y_high - y_low)


def get_interpolated_distance(distance_low, distance_med, density):
    distance_by_density = get_average_distance(density)
    interpolated_distance = interpolate(density_low, density_med, distance_low, distance_med, density)
    return min(interpolated_distance, distance_by_density)


def get_desired_distance(group_size, density):
    if group_size == 2:
        return get_interpolated_distance(distance_2_low, distance_2_med, density)
    elif group_size == 3:
        return get_interpolated_distance(distance_3_low, distance_3_med, density)
    elif group_size == 4:
        return get_interpolated_distance(distance_4_low, distance_4_med, density)
    else:
        raise NotImplementedError()


def get_configuration(group_size, density):
    configuration = {0: Vec3d.ZERO}
    desired_distance = get_desired_distance(group_size, density)
    if group_size == 2:
        if density <= density_d:
            configuration[1] = Vec3d(-desired_distance, 0, 0)
            configuration[-1] = Vec3d(desired_distance, 0, 0)
        else:
            configuration[1] = Vec3d(0, 0, desired_distance)
            configuration[-1] = Vec3d(0, 0, -desired_distance)
        return configuration
    elif group_size == 3:
        if density <= density_d:
            desired_angle = interpolate(0, density_d, 0, math.pi / 3, density)
            cos_angle = math.cos(desired_angle)
            sin_angle = math.sin(desired_angle)
            configuration[-1] = desired_distance * Vec3d(cos_angle, 0, sin_angle)
            configuration[1] = desired_distance * Vec3d(-cos_angle, 0, sin_angle)
        else:
            desired_angle = interpolate(density_d, density_f, math.pi / 3, math.pi / 2, density)
            cos_angle = math.cos(desired_angle)
            sin_angle = math.sin(desired_angle)
            configuration[1] = desired_distance * Vec3d(-cos_angle, 0, sin_angle)
            phi = 3 * desired_angle - math.pi
            configuration[-1] = configuration[1] + desired_distance * Vec3d(math.cos(phi), 0, math.sin(phi))
        return configuration
    elif group_size == 4:
        if density <= density_d:
            desired_angle = interpolate(0, density_d, 0, math.pi / 2, density)
            cos_angle = math.cos(desired_angle)
            sin_angle = math.sin(desired_angle)
            configuration[-1] = desired_distance * Vec3d(cos_angle, 0, sin_angle)
            configuration[1] = Vec3d(-desired_distance, 0, 0)
            configuration[2] = configuration[1] + desired_distance * Vec3d(-cos_angle, 0, sin_angle)
        else:
            desired_angle = interpolate(density_d, density_f, 0, math.pi / 2, density)
            cos_angle = math.cos(desired_angle)
            sin_angle = math.sin(desired_angle)
            configuration[1] = desired_distance * Vec3d(-cos_angle, 0, sin_angle)
            configuration[-1] = configuration[1] + desired_distance * Vec3d(cos_angle, 0, sin_angle)
            configuration[2] = configuration[-1] + configuration[1]
        return configuration
    else:
        raise NotImplementedError()


def get_random_start_point(portal):
    goal_line = portal.get_goal_line()
    goal_start_point = goal_line.get_start_point()
    goal_end_point = goal_line.get_end_point()
    goal_line_vector = goal_end_point - goal_start_point
    position = goal_start_point + random.random() * goal_line_vector
    direction = goal_line_vector.rotated_by(math.pi / 2)
    return position, direction


def create_agent_request(start_portal, end_portal, start_point, start_direction):
    agent_request = AgentRequest(start_portal.get_id())
    agent_request.set_goal(end_portal.get_id())
    agent_request.set_position(start_point)
    agent_request.set_heading(start_direction.get_heading())
    return agent_request

