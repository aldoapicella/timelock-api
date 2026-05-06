from datetime import datetime, timezone

from sqlalchemy import Boolean, Column, DateTime, Integer, text
from sqlalchemy.types import Unicode, UnicodeText

from src.database import Base


def utc_now_naive() -> datetime:
    return datetime.now(timezone.utc).replace(tzinfo=None)


class Capsule(Base):
    __tablename__ = "capsules"

    id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    title = Column(Unicode(120), nullable=False)
    content = Column(UnicodeText, nullable=False)
    unlock_at = Column(DateTime, nullable=False, index=True)
    public_code = Column(Unicode(32), nullable=False, unique=True, index=True)
    is_deleted = Column(Boolean, nullable=False, default=False, server_default=text("false"))
    created_at = Column(DateTime, nullable=False, default=utc_now_naive)
