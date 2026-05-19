---
id: 001
title: Django + Docker Scaffold Setup
status: idea
priority: high
supersedes: []
superseded_by: null
depends_on: []
related: []
created: 2026-05-19
completed: null
auto_safe: false
auto_safe_reason: Initial scaffolding requires choosing directory layouts and core settings.
sensitive_paths_cleared: false
---

# IDEA-001: Django + Docker Scaffold Setup

**Problem**: The project is currently an empty repository. We need to establish the Django 5.2.9 LTS foundation with a production-mirrored Docker environment.

**Proposal**: 
- Initialize Django 5.2.9 project structure.
- Create `Dockerfile` and `compose.yml` (Django, Postgres, Redis).
- Configure Daphne as the ASGI server.
- Set up `Makefile` for developer shortcuts (up, down, migrate, etc.).
- Establish the `apps/` directory for domain logic.

**Why now**: This is the mandatory "Phase 1" to enable any further feature development or workflow testing.
