from init import db


class Book(db.Model):
    # TODO 为了方便,id暂时改为自增主键，待优化
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(255))
    # 2007年1月1日之后出版的新书，必须编配新的ISBN-13位书号。
    isbncode = db.Column(db.String(13))
    type = db.Column(db.String(255))
    introduce = db.Column(db.String(255))
    ownerid = db.Column(db.String(12))
    image = db.Column(db.String(255))
    status = db.Column(db.Integer, autoincrement=False)

    def __init__(self, name, isbncode, btype, introduce, ownerid, image, status):
        # self.id = bid
        self.name = name
        self.isbncode = isbncode
        self.type = btype
        self.introduce = introduce
        self.ownerid = ownerid
        self.image = image
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
