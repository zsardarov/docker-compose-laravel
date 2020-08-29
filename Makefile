init: docker-build composer-install
	docker-compose exec php cp .env.example .env
	docker-compose exec php php artisan key:generate

docker-up:
	docker-compose up -d site

docker-down:
	docker-compose down

docker-build:
	docker-compose up -d --build site

composer-install:
	docker-compose run --rm composer install

assets-install:
	docker-compose run --rm npm install

assets-dev:
	docker-compose run --rm npm run dev


