from init import db


class BorrowRequire(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    lenderid = db.Column(db.String(12))
    ownerid = db.Column(db.String(12))
    bookid = db.Column(db.Integer, autoincrement=False)
    bookname = db.Column(db.String(255))
    status = db.Column(db.Integer, autoincrement=False)

    def __init__(self, lenderid, ownerid, bookid, bookname, status):
        self.lenderid = lenderid
        self.ownerid = ownerid
        self.bookid = bookid
        self.bookname = bookname
        self.status = status

    def to_dict(self):
        """
        object转dict
        :return:
        """
        dict = self.__dict__
        if "_sa_instance_state" in dict:
            del dict["_sa_instance_state"]
        return dict
