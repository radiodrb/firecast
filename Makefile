up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose down
	docker compose up -d

logs:
	docker compose logs -f

build:
	docker compose build --no-cache

backend:
	docker compose exec php sh

frontend:
	docker compose exec frontend sh

composer:
	docker compose exec php composer install

npm:
	docker compose exec frontend npm install

artisan:
	docker compose exec php php artisan

migrate:
	docker compose exec php php artisan migrate

fresh:
	docker compose exec php php artisan migrate:fresh --seed

test:
	docker compose exec php php artisan test

lint:
	docker compose exec frontend npm run lint
