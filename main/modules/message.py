from init import db


class Message(db.Model):
    id = db.Column(db.String(12), primary_key=True)
    speakerid = db.Column(db.String(12))
    receiverid = db.Column(db.String(12))
    data = db.Column(db.String)
    date = db.Column(db.DateTime)

    def __init__(self, mid, speakerid, receiverid, data, date):
        self.id = mid
        self.speakerid = speakerid
        self.receiverid = receiverid
        self.data = data
        self.date = date

    def to_json(self):
        """
        json序列化
        :return:
        """
        dict = self.__dict__
        if "_sa_instance_state" in dict:
            del dict["_sa_instance_state"]
        return dict
