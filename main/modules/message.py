from init import db


class Message(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    speakerid = db.Column(db.String(12))
    receiverid = db.Column(db.String(12))
    msg = db.Column(db.String)
    date = db.Column(db.DateTime)

    def __init__(self, speakerid, receiverid, msg, date):
        self.speakerid = speakerid
        self.receiverid = receiverid
        self.msg = msg
        self.date = date

    def to_dict(self):
        """
        object转dict
        :return:
        """
        dict = self.__dict__
        if "_sa_instance_state" in dict:
            del dict["_sa_instance_state"]
        return dict
