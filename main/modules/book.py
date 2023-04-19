from init import db


class Book(db.Model):
    id = db.Column(db.String(12), primary_key=True)
    name = db.Column(db.String(255))
    isbnCode = db.Column(db.String(10))
    type = db.Column(db.String(255))
    introduce = db.Column(db.String(255))
    ownerid = db.Column(db.String(12))
    image = db.Column(db.String(255))

    def __init__(self, bid, name, isbnCode, btype, introduce, ownerid, image):
        self.id = bid
        self.name = name
        self.isbnCode = isbnCode
        self.type = btype
        self.introduce = introduce
        self.ownerid = ownerid
        self.image = image

