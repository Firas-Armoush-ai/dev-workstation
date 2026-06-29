# ==========================================================
# Dev Workstation
# Production-inspired AI Development Environment
# The Makefile should never contain business logic.
# It only dispatches commands to the scripts/ directory.
# ==========================================================

# ==========================================================
# Dev Workstation
# ==========================================================

SHELL := /usr/bin/env bash

COMPOSE := docker compose -f docker/compose/compose.yaml

.DEFAULT_GOAL := help

.PHONY: help up down restart rebuild config logs ps pull \
doctor status postgres mysql redis backup restore clean reset

help:
	@echo ""
	@echo "Dev Workstation"
	@echo ""
	@echo "Infrastructure"
	@echo "  make up"
	@echo "  make down"
	@echo "  make restart"
	@echo "  make rebuild"
	@echo "  make ps"
	@echo "  make logs"
	@echo "  make config"
	@echo "  make pull"
	@echo ""
	@echo "Database"
	@echo "  make postgres"
	@echo "  make mysql"
	@echo "  make redis"
	@echo ""
	@echo "Maintenance"
	@echo "  make doctor"
	@echo "  make status"
	@echo "  make backup"
	@echo "  make restore"
	@echo "  make clean"
	@echo "  make reset"
	@echo ""

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

restart:
	$(COMPOSE) restart

rebuild:
	$(COMPOSE) down
	$(COMPOSE) up -d --build

config:
	$(COMPOSE) config

logs:
	$(COMPOSE) logs -f

ps:
	$(COMPOSE) ps

pull:
	$(COMPOSE) pull

doctor:
	bash ./scripts/linux/doctor.sh

status:
	bash ./scripts/linux/status.sh

backup:
	bash ./scripts/backup/backup-all.sh

restore:
	@echo ""
	@echo "bash scripts/backup/restore-postgres.sh <backup.sql>"
	@echo "bash scripts/backup/restore-mysql.sh <backup.sql>"
	@echo ""

postgres:
	docker exec -it postgres psql -U postgres -d appdb

mysql:
	docker exec -it mysql mysql -uroot -p

redis:
	docker exec -it redis redis-cli

clean:
	$(COMPOSE) down -v

reset:
	$(COMPOSE) down -v
	docker system prune -f
