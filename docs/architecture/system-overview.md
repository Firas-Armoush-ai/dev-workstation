# Development Workstation Architecture

## Overview

This repository documents a production-inspired local development workstation for Artificial Intelligence, Machine Learning, Backend Development, Flutter, and Cloud Engineering.

The goal is to provide a reproducible, Linux-first development environment that mirrors modern engineering practices while remaining simple enough for daily development.

---

# High-Level Architecture

```text
                     Windows 10/11
                            │
        ┌───────────────────┴───────────────────┐
        │                                       │
 Android Studio                          Docker Desktop
        │                                       │
 Flutter SDK                               WSL2 Ubuntu
                                                │
                                      Cursor / VS Code
                                                │
                                      Docker Compose Stack
                                                │
      ┌──────────────┬──────────────┬──────────────┬──────────────┐
      │              │              │              │
 PostgreSQL      pgAdmin         Redis         MySQL
      │
 Named Docker Volume
```

---

# Design Principles

The workstation follows these engineering principles:

* Linux-first development
* Infrastructure as Code
* Docker-based services
* Environment-based configuration
* Health checks for infrastructure services
* Persistent named volumes
* Conventional Commits
* Semantic Versioning
* Architecture Decision Records (ADRs)
* Verification before documentation

---

# Technology Stack

## Operating System

* Windows 10/11
* Windows Subsystem for Linux (WSL2)
* Ubuntu 24.04 LTS

## Development Tools

* Cursor
* Visual Studio Code
* Git
* Docker Desktop
* Android Studio
* Flutter SDK

## Python

* Miniconda
* Isolated Conda environments
* JupyterLab

## Infrastructure

Current

* PostgreSQL 17
* pgAdmin 4

Planned

* Redis
* MySQL
* MinIO
* Qdrant
* Ollama

---

# Repository Structure

```text
dev-workstation/
│
├── docker/
├── docs/
├── config/
├── scripts/
├── templates/
├── bootstrap/
└── .github/
```

---

# Engineering Workflow

Every deliverable follows the same lifecycle:

1. Plan
2. Design
3. Implement
4. Verify
5. Document
6. Commit
7. Push
8. Tag (when appropriate)

---

# Current Status

| Deliverable                  | Status   |
| ---------------------------- | -------- |
| Repository Foundation        | Complete |
| Linux-first Architecture     | Complete |
| PostgreSQL Development Stack | Complete |
| Redis Development Stack      | Planned  |
| MySQL Development Stack      | Planned  |
