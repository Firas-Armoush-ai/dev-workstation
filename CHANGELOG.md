# Changelog

All notable changes to this project are documented in this file.

The format follows the principles of **Keep a Changelog** and **Semantic Versioning**.

---

## [1.0.0] - 2026-06-29

### Added

#### Repository

* Initial repository structure
* MIT License
* EditorConfig
* Git ignore rules
* Semantic versioning
* Architecture Decision Record (ADR-0001)

#### Documentation

* Project README
* Docker Compose documentation
* Architecture overview
* Troubleshooting guide
* Architecture diagram

#### Docker Infrastructure

* Docker Compose stack
* PostgreSQL 17
* pgAdmin 4
* Redis 8
* MySQL 8.4
* Persistent Docker volumes
* Health checks
* Environment-based configuration

#### Automation

* Makefile automation
* Workstation health verification (`make doctor`)
* Infrastructure status (`make status`)
* Docker lifecycle commands
* Backup automation
* PostgreSQL restore script
* MySQL restore script

#### Configuration

* Cursor configuration
* Visual Studio Code configuration
* Git configuration templates
* Docker environment template

#### Engineering

* Linux-first development workflow
* Infrastructure as Code approach
* One source of truth for configuration
* Shared shell library (`common.sh`)
* Conventional Commits
* Reproducible workstation architecture

---

## [0.2.0] - 2026-06-29

### Added

* PostgreSQL development stack
* pgAdmin integration
* Docker Compose foundation
* Named Docker volumes
* Initial Makefile

---

## [0.1.0] - 2026-06-27

### Added

* Repository initialization
* Base project structure
* Initial documentation
* Project license
