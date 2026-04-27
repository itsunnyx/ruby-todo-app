# Todo App

## Run with Docker

This project includes PostgreSQL and pgAdmin in `docker-compose.yml`.

1. Copy the example environment file:

	```bash
	cp .env.example .env
	```

2. Start the app and database:

	```bash
	docker compose up --build
	```

3. Open the app:

	- Rails app: http://localhost:3000
	- pgAdmin: http://localhost:5050

## pgAdmin connection

Use these settings when adding the PostgreSQL server in pgAdmin:

- Host name/address: `db`
- Port: `5432`
- Maintenance database: `todo_app_development`
- Username: `todo_app`
- Password: `todo_app`

## Useful commands

Run Rails commands inside the web container:

```bash
docker compose exec web ./bin/rails db:migrate
docker compose exec web ./bin/rails test
docker compose exec web ./bin/rails console
```
