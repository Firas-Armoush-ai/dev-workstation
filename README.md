# Dev Workstation

> A reproducible, Linux-first AI Engineering development platform built with Windows, WSL2, Docker, Conda, Python, Flutter, Android Studio, Cursor, and Visual Studio Code.

---

## Overview

**Dev Workstation** documents the design, implementation, and maintenance of a modern software engineering workstation optimized for Artificial Intelligence, Machine Learning, Backend Development, Flutter, and DevOps workflows.

Rather than being a collection of installation notes, this repository serves as an engineering reference that captures architectural decisions, automation, configuration, and operational knowledge required to reproduce a professional development environment.

The repository is maintained using Infrastructure as Code principles wherever practical. Configuration files, documentation, scripts, and development standards are version-controlled to ensure the workstation remains reproducible, maintainable, and portable.

---

## Objectives

This repository aims to:

* Build a reproducible development workstation.
* Document engineering decisions and their rationale.
* Automate workstation provisioning where practical.
* Standardize development tools and workflows.
* Serve as a long-term engineering knowledge base.
* Demonstrate professional engineering practices through documentation and automation.

---

## Guiding Principles

The workstation is designed around several engineering principles.

### Linux-first Development

Python, Git, Docker, Jupyter, AI frameworks, and modern development tooling execute inside WSL2 to provide a Linux-native development environment while preserving the convenience of Windows desktop applications.

### Reproducibility

Every configuration should be reproducible from version-controlled files.

### Automation

Manual configuration is minimized. Installation and maintenance tasks should be automated whenever possible.

### Documentation-first

Every important decision is documented. Future maintainers—including the author—should understand not only *how* something was implemented but *why* it was chosen.

### Security

Secrets, credentials, certificates, and personal configuration are never committed to the repository.

---

## Repository Structure

```text
.github/        GitHub workflows and templates
assets/         Images and diagrams
bootstrap/      Workstation bootstrap scripts
config/         Tool configuration files
docker/         Container infrastructure
docs/           Documentation
examples/       Sample configurations
scripts/        Automation scripts
templates/      Reusable templates
```

---

## Technology Stack

### Operating System

* Windows 10/11
* WSL2 (Ubuntu)

### Development

* Cursor
* Visual Studio Code
* Git
* GitHub

### AI Engineering

* Python
* Conda
* JupyterLab
* PyTorch
* Transformers
* MLflow
* OpenAI SDK
* LangChain
* LangGraph
* Azure Machine Learning SDK

### Infrastructure

* Docker Desktop
* Docker Compose
* PostgreSQL
* Redis
* MySQL
* pgAdmin

### Mobile Development

* Flutter
* Dart
* Android Studio

---

## Documentation

Detailed documentation is organized under the `docs/` directory.

| Section         | Description                          |
| --------------- | ------------------------------------ |
| Architecture    | High-level workstation design        |
| Decisions       | Architecture Decision Records (ADRs) |
| Installation    | Installation guides                  |
| Troubleshooting | Common issues and resolutions        |
| References      | External documentation and resources |

---

## Roadmap

* [x] Windows development environment
* [x] WSL2 development platform
* [x] Python AI environment
* [x] Docker integration
* [x] Cursor configuration
* [x] Visual Studio Code configuration
* [ ] PostgreSQL container stack
* [ ] Redis container stack
* [ ] MySQL container stack
* [ ] Automated workstation bootstrap
* [ ] Continuous validation scripts

---

## License

This project is released under the MIT License.

See the `LICENSE` file for details.
