.PHONY: setup sync test lint clean help

help:
	@echo "Available commands:"
	@echo "  make setup   - Create virtual environment and install uv"
	@echo "  make sync    - Sync pinned dependencies from requirements.txt"
	@echo "  make test    - Run pytest test suite"
	@echo "  make lint    - Run ruff linter and code formatting check"
	@echo "  make clean   - Remove cache, build, and test artifacts"

setup:
	uv venv .venv
	uv pip compile requirements.in -o requirements.txt
	uv pip sync requirements.txt

sync:
	uv pip sync requirements.txt

test:
	uv run pytest tests/

lint:
	uv run ruff check .
	uv run ruff format --check .

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type d -name "*.egg-info" -exec rm -rf {} +
	find . -type d -name ".pytest_cache" -exec rm -rf {} +
	find . -type d -name ".ruff_cache" -exec rm -rf {} +
