class BaseFlow:

    def release(self, simulation):
        return None

    def update_group_status(self, frame_summary, simulation):
        return None

    def update_existing(self, frame_summary, exit_portal_ids):
        return None
