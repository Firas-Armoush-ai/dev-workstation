# Common Problems

This document lists the most common issues encountered while setting up and maintaining the Dev Workstation.

---

# Docker command not found in WSL

## Symptom

```text
The command 'docker' could not be found in this WSL 2 distro.
```

## Cause

Docker Desktop WSL integration is disabled for the Ubuntu distribution.

## Solution

1. Open Docker Desktop.
2. Go to **Settings → Resources → WSL Integration**.
3. Enable integration for your Ubuntu distribution.
4. Restart Docker Desktop.

Verify:

```bash
docker version
```

---

# Docker Compose configuration error

## Symptom

```text
docker compose config
```

returns validation errors.

## Cause

Invalid YAML syntax or an incorrect Compose file.

## Solution

Validate the configuration before starting containers.

```bash
make config
```

---

# Database container is unhealthy

## Symptom

```bash
docker ps
```

shows:

```text
(unhealthy)
```

## Solution

Inspect container logs.

```bash
make logs
```

or

```bash
docker logs postgres
```

```bash
docker logs mysql
```

---

# pgAdmin cannot be opened

## Symptom

Browser cannot reach:

```text
http://localhost:5050
```

## Solution

Verify the container.

```bash
docker ps
```

If the container is running, open:

```text
http://127.0.0.1:5050
```

---

# Docker services are not running

Verify the workstation.

```bash
make doctor
```

Display running services.

```bash
make status
```

Start the stack.

```bash
make up
```

---

# Backup verification

Create backups.

```bash
make backup
```

Verify backup files.

```bash
tree docker/backups
```

---

# Verify PostgreSQL

```bash
docker exec -it postgres psql -U postgres -d appdb
```

---

# Verify Redis

```bash
docker exec -it redis redis-cli
```

Test:

```text
PING
```

Expected:

```text
PONG
```

---

# Verify MySQL

```bash
docker exec -it mysql mysql -uroot -p
```

List databases.

```sql
SHOW DATABASES;
```

---

# Verify the complete workstation

```bash
make doctor
```

Expected:

```text
Docker Engine ............. OK
Docker Compose ............ OK
Compose File .............. OK
PostgreSQL ................ OK
Redis ..................... OK
MySQL ..................... OK

Workstation ready.
```

---

# Useful Commands

| Command             | Purpose                     |
| ------------------- | --------------------------- |
| `make up`           | Start all services          |
| `make down`         | Stop all services           |
| `make status`       | Show running containers     |
| `make doctor`       | Verify workstation health   |
| `make logs`         | View container logs         |
| `make backup`       | Backup PostgreSQL and MySQL |
| `docker ps`         | List running containers     |
| `docker volume ls`  | List Docker volumes         |
| `docker network ls` | List Docker networks        |
