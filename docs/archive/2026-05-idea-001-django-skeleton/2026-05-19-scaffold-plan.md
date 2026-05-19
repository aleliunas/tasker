---
stage: plan
slug: django-docker-scaffold
created: 2026-05-19
source: docs/ideas/IDEA-001-baseline-architecture.md
status: ready
project: tasker
---

# Plan: IDEA-001 - Django + Docker Compose Skeleton

This plan defines the initial scaffolding for the Tasker project.

## 1. Directory Structure
- `tasker/` - Core project settings, ASGI, URLs.
- `apps/` - Container for Django apps.
- `requirements/` - base.txt, dev.txt.
- `compose/` - Dockerfiles and service configs (e.g., nginx).

## 2. Infrastructure (Docker)
- **web**: Python 3.12-slim based image, running Daphne.
- **db**: PostgreSQL 16.
- **redis**: Redis 7-alpine.
- **nginx**: Proxying to Daphne, serving static/media.

## 3. Execution Sequence

### Step 1: Requirements & Dockerfile
- Create `requirements/base.txt` (Django==5.2.9, daphne, psycopg, django-environ).
- Create `requirements/dev.txt` (pytest, pytest-django, pyflakes).
- Create `Dockerfile` in the root (for dev).

### Step 2: Orchestration (Compose)
- Create `compose.yml` defining `web`, `db`, `redis`.
- Create `.env.template`.

### Step 3: Django Init
- Run `django-admin startproject tasker .` via docker.
- Create `apps/` and configure `settings.py` to include it in the path.

### Step 4: Makefile & Nginx
- Create `Makefile` with `up`, `down`, `migrate`, `test`.
- Create basic `nginx/nginx.conf`.

## 4. Verification
- `make up` results in all containers running.
- `curl http://localhost` returns Django 200 (via nginx -> daphne).
- `make test` runs a simple smoke test.
