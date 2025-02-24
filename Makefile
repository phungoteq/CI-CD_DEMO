.PHONY: install lint format test run

install:
	poetry install --no-root

lint:
	poetry run flake8 app tests

format:
	poetry run black app tests

test:
	poetry run pytest -v

run:
	poetry run uvicorn app.main:app --reload
