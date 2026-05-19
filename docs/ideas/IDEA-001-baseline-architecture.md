---
id: 001
title: Django + Docker Compose Skeleton
status: idea
priority: high
supersedes: []
superseded_by: null
depends_on: []
related: []
created: 2026-05-19
completed: null
auto_safe: false
auto_safe_reason: 'Greenfield scaffolding needs human review.'
sensitive_paths_cleared: false
sensitive_paths_cleared_reason: 'Infrastructure changes.'
---

# IDEA-001: Django + Docker Compose Skeleton

**Proposal**: Stand up the minimum runnable surface (Django 5.2.9 + Docker Compose).
- Django package: tasker/
- Apps: apps/
- Stack: web (Daphne), db (Postgres), redis, nginx.
- Tools: Makefile, requirements/, .env.template.
