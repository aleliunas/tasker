# Tech Standards: Django + Docker

## Stack
- Django 5.2.9 (LTS)
- Daphne (ASGI)
- PostgreSQL & Redis
- Docker Compose

## Development
- Use `Makefile` for all common actions (`make up`, `make migrate`, `make test`).
- Apps must live in the `apps/` directory.
- No host-level installs; everything runs inside Docker.
- `.env` is off-limits; use `.env.template` for reference.
