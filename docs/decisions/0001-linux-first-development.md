# ADR-0001: Linux-First Development

## Status

Accepted

## Context

This workstation is designed for Artificial Intelligence, Machine Learning, Backend Development, Docker, and Flutter.

Modern AI and backend tooling is primarily developed for Linux environments. Python, Docker, Git, Jupyter, CUDA tooling, and many open-source libraries are first-class citizens on Linux.

Although Windows provides excellent desktop tooling, developing directly on Windows often introduces differences in file systems, shell behavior, permissions, and package management.

Windows Subsystem for Linux (WSL2) provides a Linux environment while maintaining compatibility with Windows applications such as Android Studio, Microsoft Office, browsers, and desktop utilities.

## Decision

The workstation follows a Linux-first architecture.

Source code repositories are stored inside the WSL filesystem.

Development is performed from within WSL using Cursor.

Windows hosts desktop applications such as:

* Cursor
* Visual Studio Code
* Docker Desktop
* Android Studio
* Flutter SDK

Python, Conda, Git, Docker CLI, JupyterLab, and AI tooling execute inside WSL.

## Consequences

### Advantages

* Better compatibility with AI and backend tooling.
* Faster filesystem performance than developing under `/mnt/c`.
* Consistent shell environment.
* Native Linux package management.
* Better Docker integration.
* Reproducible development environment.

### Trade-offs

* Developers should avoid storing repositories under Windows drives when working primarily from WSL.
* Some Windows-only tools require access through `\\wsl$` or opening projects directly from WSL.

## Alternatives Considered

### Native Windows Development

Rejected due to differences in tooling, shell behavior, permissions, and package compatibility.

### Virtual Machine

Rejected because WSL2 provides lower overhead while maintaining excellent Linux compatibility.

## References

* Microsoft WSL Documentation
* Docker Desktop WSL Integration
* Cursor WSL Development
