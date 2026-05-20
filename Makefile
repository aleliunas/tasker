up:
	docker compose up -d

down:
	docker compose down

build:
	docker compose build

migrate:
	docker compose exec web python manage.py migrate

makemigrations:
	docker compose exec web python manage.py makemigrations

shell:
	docker compose exec web python manage.py shell

test:
	docker compose exec web pytest

manage:
	docker compose exec web python manage.py $(ARGS)

logs:
	docker compose logs -f
