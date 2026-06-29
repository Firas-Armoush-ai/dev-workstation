# Docker Compose Development Stack

This directory contains the Docker Compose configuration for the local development environment.

## Services

| Service       | Port | Purpose                             |
| ------------- | ---: | ----------------------------------- |
| PostgreSQL 17 | 5432 | Primary relational database         |
| pgAdmin 4     | 5050 | Web-based PostgreSQL administration |

Additional services such as Redis and MySQL will be added in future milestones.

---

# Prerequisites

* Docker Desktop
* WSL2
* Docker Compose v2+

---

# Start the stack

```bash
docker compose up -d
```

---

# Stop the stack

```bash
docker compose down
```

---

# Restart the stack

```bash
docker compose down
docker compose up -d
```

---

# View running containers

```bash
docker ps
```

---

# Validate the Compose configuration

```bash
docker compose config
```

---

# View logs

All services

```bash
docker compose logs
```

Specific service

```bash
docker compose logs postgres
```

```bash
docker compose logs pgadmin
```

---

# PostgreSQL

Default connection

| Setting  | Value     |
| -------- | --------- |
| Host     | localhost |
| Port     | 5432      |
| Database | appdb     |
| Username | postgres  |

---

# pgAdmin

URL

```
http://127.0.0.1:5050/browser/
```

Default credentials are defined in the local `.env` file.

---

# Environment Variables

Configuration values are stored in:

```
.env
```

The repository contains:

```
.env.example
```

Copy it before first use.

```bash
cp .env.example .env
```

---

# Data Persistence

Docker named volumes are used to persist data.

Current volumes

* postgres-data
* pgadmin-data

Removing containers does **not** remove the database.

---

# Project Structure

```
docker/
└── compose/
    ├── compose.yaml
    ├── .env.example
    ├── .gitignore
    └── README.md
```
