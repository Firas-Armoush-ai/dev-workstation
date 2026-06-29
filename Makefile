# ==========================================================
# Dev Workstation
# Production-inspired AI Development Environment
# ==========================================================

COMPOSE := docker compose -f docker/compose/compose.yaml

.DEFAULT_GOAL := help

.PHONY: \
help \
up \
down \
restart \
ps \
logs \
config \
pull \
postgres \
redis \
mysql \
backup \
clean

# ==========================================================
# Help
# ==========================================================

help:
	@echo ""
	@echo "=================================================="
	@echo " Dev Workstation"
	@echo "=================================================="
	@echo ""
	@echo "Infrastructure"
	@echo "  make up          Start all services"
	@echo "  make down        Stop all services"
	@echo "  make restart     Restart all services"
	@echo "  make ps          List running containers"
	@echo "  make logs        View all logs"
	@echo "  make config      Validate compose configuration"
	@echo "  make pull        Pull latest container images"
	@echo ""
	@echo "Database"
	@echo "  make postgres    PostgreSQL shell"
	@echo "  make redis       Redis CLI"
	@echo "  make mysql       MySQL shell (after MySQL is added)"
	@echo ""
	@echo "Maintenance"
	@echo "  make backup      Backup databases (coming soon)"
	@echo "  make clean       Remove containers and volumes"
	@echo ""

# ==========================================================
# Docker Compose
# ==========================================================

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

restart:
	$(COMPOSE) down
	$(COMPOSE) up -d

ps:
	$(COMPOSE) ps

logs:
	$(COMPOSE) logs

config:
	$(COMPOSE) config

pull:
	$(COMPOSE) pull

# ==========================================================
# Database Shells
# ==========================================================

postgres:
	docker exec -it postgres psql -U postgres -d appdb

redis:
	docker exec -it redis redis-cli

mysql:
	docker exec -it mysql mysql -u root -p

# ==========================================================
# Maintenance
# ==========================================================

backup:
	@echo ""
	@echo "Backup scripts will be implemented in Deliverable 06."
	@echo ""

clean:
	$(COMPOSE) down -v
