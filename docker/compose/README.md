# Docker Compose

This directory contains the complete local infrastructure for the Dev Workstation.

The stack provides production-inspired services for AI engineering and software development.

---

# Services

| Service    | Port | Purpose                       |
| ---------- | ---: | ----------------------------- |
| PostgreSQL | 5432 | Primary relational database   |
| pgAdmin    | 5050 | PostgreSQL administration     |
| Redis      | 6379 | Cache and message broker      |
| MySQL      | 3306 | Secondary relational database |

---

# Configuration

Environment variables are defined in:

```text
docker/compose/.env
```

A template is provided:

```text
docker/compose/.env.example
```

---

# Start

```bash
make up
```

---

# Stop

```bash
make down
```

---

# Verify

```bash
make doctor
```

---

# Status

```bash
make status
```

---

# View Logs

```bash
make logs
```

---

# Backup

```bash
make backup
```

---

# Restore

PostgreSQL

```bash
bash scripts/backup/restore-postgres.sh backup.sql
```

MySQL

```bash
bash scripts/backup/restore-mysql.sh backup.sql
```

---

# Services

## PostgreSQL

Image

```
postgres:17
```

Persistent volume

```
postgres-data
```

---

## Redis

Image

```
redis:8-alpine
```

Persistent volume

```
redis-data
```

Append Only File (AOF) persistence is enabled.

---

## MySQL

Image

```
mysql:8.4
```

Persistent volume

```
mysql-data
```

---

## pgAdmin

Image

```
dpage/pgadmin4
```

Persistent volume

```
pgadmin-data
```

---

# Design Principles

* Docker Compose as the single orchestration tool.
* Environment variables stored in one place.
* Persistent named volumes.
* Health checks for all databases.
* Infrastructure managed through the Makefile.
* No secrets committed to Git.
