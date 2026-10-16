from fastapi import APIRouter

from app.core.config import get_settings

router = APIRouter(prefix="/api/v1")


@router.get("/hello")
def hello() -> dict[str, str]:
    s = get_settings()
    return {"message": "BorgTech Sentinel online", "version": s.app_version, "env": s.environment}
