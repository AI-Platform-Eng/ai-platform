.PHONY: help setup up down test lint clean

help:
	@echo "AI Platform Engine - Commander"
	@echo "  make setup   : Install poetry & dependencies"
	@echo "  make up      : Start infra (Redis, Postgres, MinIO)"
	@echo "  make down    : Stop infra"
	@echo "  make test    : Run unit tests"
	@echo "  make lint    : Run Ruff & Mypy"

setup:
	pip install poetry
	poetry install

up:
	docker compose -f infra/docker-compose.yml up -d

down:
	docker compose -f infra/docker-compose.yml down

test:
	poetry run pytest

lint:
	poetry run ruff check .
	poetry run mypy .
