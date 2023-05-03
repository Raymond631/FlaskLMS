from init import db


class BorrowList(db.Model):  # 对应数据库表borrow_list（驼峰自动映射成下划线）
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    ownerid = db.Column(db.String(12))
    lenderid = db.Column(db.String(12))
    type = db.Column(db.String(255))
    bookid = db.Column(db.Integer, autoincrement=False)
    date = db.Column(db.DateTime)
    return_deadline = db.Column(db.DateTime)
    status = db.Column(db.Integer, autoincrement=False)

    def __init__(self, ownerid, lenderid, type, bookid, date, return_deadline, status):
        self.ownerid = ownerid
        self.lenderid = lenderid
        self.type = type
        self.bookid = bookid
        self.date = date
        self.return_deadline = return_deadline
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
