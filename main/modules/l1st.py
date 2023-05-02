from init import db


class L1st(db.Model):
    id = db.Column(db.String(12), primary_key=True)
    ownerid = db.Column(db.String(12))
    lenderid = db.Column(db.String(12))
    bookid = db.Column(db.String(12))
    date = db.Column(db.DateTime)

    def __init__(self, lid, ownerid, lenderid, bookid, date):
        self.id = lid
        self.ownerid = ownerid
        self.lenderid = lenderid
        self.bookid = bookid
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