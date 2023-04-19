from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.dialects.mysql import VARCHAR, TEXT, BIGINT, INTEGER, SMALLINT, TINYINT, DECIMAL, FLOAT, \
    DOUBLE, DATETIME, TIMESTAMP, DECIMAL

db = SQLAlchemy()