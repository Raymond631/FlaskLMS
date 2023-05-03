from ex import db
from modules.message import Message


def addmsg(speakerid, receiverid, msg, date):
    newMsg = Message(speakerid=speakerid, receiverid=receiverid, msg=msg, date=date)
    db.session.add(newMsg)
    db.session.commit()


def getmsg(userid, times):
    messagePaginate = Message.query.filter(Message.speakerid == userid or Message.receiverid == userid).order_by(Message.date.desc()).paginate(page=times, per_page=9, error_out=False)
    num = messagePaginate.pages * 9  # 总数(假设每页都满，对前端没影响)
    messages = []
    for message in messagePaginate.items:
        messages.append(message.to_dict())
    return {"num": num, "borrows": messages}
