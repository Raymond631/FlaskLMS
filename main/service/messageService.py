from ex import db
from modules.Notice import Notice
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


def addNotice(announcer, content, lastModified):
    newNotice = Notice(announcer=announcer, content=content, last_modified=lastModified)
    db.session.add(newNotice)
    db.session.commit()


def deleteNotice(id):
    Notice.query.filter(Notice.id == id).delete()
    db.session.commit()


def updateNotice(id, announcer, content, lastModified):
    Notice.query.filter(Notice.id == id).update({"announcer": announcer, "content": content, "last_modified": lastModified})
    db.session.commit()


def getNotice():
    noticeList = Notice.query.order_by(Notice.last_modified.desc()).limit(5)
    notices = []
    for notice in noticeList:
        notices.append(notice.to_dict())
    return notices
