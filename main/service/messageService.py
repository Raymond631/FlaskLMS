from sqlalchemy import or_, and_

from ex import db
from modules.Notice import Notice
from modules.message import Message


def addmsg(speakerid, receiverid, msg, date):
    newMsg = Message(speakerid=speakerid, receiverid=receiverid, msg=msg, date=date)
    db.session.add(newMsg)
    db.session.commit()


def getmsg(userid, chatPerson):
    messagelist = Message.query.filter(
        or_(
            and_(Message.speakerid == userid, Message.receiverid == chatPerson),
            and_(Message.speakerid == chatPerson, Message.receiverid == userid))
    ).order_by(Message.date.desc()).all()
    messages = []
    for message in messagelist:
        message.date = message.date.strftime('%Y-%m-%d %H:%M:%S')
        messages.append(message.to_dict())
    return messages


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
        notice.date = notice.date.strftime('%Y-%m-%d %H:%M:%S')
        notices.append(notice.to_dict())
    return notices
