from init import db


class Notice(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    announcer = db.Column(db.String(12))
    content = db.Column(db.String)
    last_modified = db.Column(db.DateTime)

    def __init__(self, announcer, content, last_modified):
        self.announcer = announcer
        self.content = content
        self.last_modified = last_modified

    def to_dict(self):
        """
        object转dict
        :return:
        """
        dict = self.__dict__
        if "_sa_instance_state" in dict:
            del dict["_sa_instance_state"]
        return dict
