.PHONY: install run test lint

install:
	cd backend && python -m venv .venv && .venv/bin/pip install -e ".[dev]"

run:
	cd backend && .venv/bin/uvicorn app.main:app --reload --port 8000

test:
	cd backend && .venv/bin/pytest -q

lint:
	cd backend && .venv/bin/ruff check .
