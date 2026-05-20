---
stage: plan
slug: idea-001-django-skeleton
created: 2026-05-19
source: docs/ideas/IDEA-001-django-skeleton.md
status: draft
title: "feat: IDEA-001 — Django + Docker Compose Skeleton"
type: feat
project: tasker
---

## Overview

Establish the foundational runnable surface for the `tasker` project. This includes a Django 5.2.9 project skeleton, a containerised stack (PostgreSQL, Redis, Nginx, Daphne), and the developer tooling (Makefile, requirements split) required to begin domain implementation.

## Problem Frame

The `tasker` repository is currently a "pre-scaffolding" state with no working code. Without a runnable stack, the mind-vault workflow cannot be applied to domain features. This IDEA provides the essential plumbing to enable all future work.

## Requirements Trace

- **R1.** Django 5.2.9 (LTS) project package in `tasker/`.
- **R2.** `apps/` directory for domain application isolation.
- **R3.** Docker Compose stack:
  - `web`: Python container running Daphne (ASGI).
  - `db`: PostgreSQL.
  - `redis`: Cache and Channels layer.
  - `nginx`: Reverse proxy with `proxy_pass` to Daphne.
- **R4.** `Makefile` targets: `up`, `down`, `shell`, `test`, `migrate`, `makemigrations`, `logs`.
- **R5.** Multi-stage `Dockerfile` (pyenv/pip friendly).
- **R6.** Smoke test: Proves Django responds with 200 OK on `/`.
- **R7.** Environment hygiene: `.env.template` provided; `.env` gitignored.

## Scope

**In scope:**
- Project structure (`tasker/`, `apps/`, `requirements/`, `docs/`).
- Base Django configuration (settings, urls, asgi).
- Dockerization (Dockerfile, compose.yml, nginx/config).
- Basic developer scripts (Makefile).
- Initial test suite setup (pytest).

**Out of scope:**
- Custom User models.
- Domain models (`Project`, `Task`).
- UI/Frontend implementation.
- Celery integration.

## Key Decisions

- **Daphne over Gunicorn**: Unified ASGI server for HTTP and WebSockets (per `CLAUDE.md`).
- **Nginx in Dev**: Development environment mirrors production as closely as possible via a local nginx container.
- **Requirements Split**: `base.txt` for production deps, `dev.txt` for test/dev tooling.
- **Pyenv-friendly Dockerfile**: Ensure Python environment management is consistent with local developer habits if applicable, though primarily for container build stability.

## Execution Plan

1. **Environment & Deps**:
   - Create `requirements/base.txt` (Django==5.2.9, daphne, psycopg[binary], django-environ).
   - Create `requirements/dev.txt` (pytest, pytest-django, pyflakes).
2. **Django Skeleton**:
   - Initialize Django project `tasker` inside `C:\PROJECTS\tasker\tasker`.
   - Configure `settings.py` for Docker (Postgres, Redis, ASGI).
   - Set up `apps/` directory and update `INSTALLED_APPS` search path.
3. **Containerization**:
   - Write `Dockerfile`.
   - Write `compose.yml`.
   - Configure `nginx/nginx.conf`.
4. **Tooling**:
   - Write `Makefile`.
   - Create `.env.template` and `.gitignore` / `.dockerignore`.
5. **Verification**:
   - Create `apps/core/tests.py` (or similar) with a simple root URL test.
   - Run `make up` and `make test`.

## Open Questions

- **Q1.** Should we use a custom user model from day zero? (Recommendation: Keep it default for IDEA-001 to minimize surface area, move to IDEA-002).
- **Q2.** Exact Nginx config for static files in dev? (Recommendation: Standard `alias` / `root` to a volume).

---

**Status:** draft — awaiting review and "Daryk" signal.
