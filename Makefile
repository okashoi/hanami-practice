.PHONY: up down

.env:
	cp .env.example .env

up: .env services/ruby/Gemfile services/ruby/Gemfile.lock
	docker-compose up -d --build

down:
	docker-compose down

services/ruby/Gemfile: src/Gemfile
	cp src/Gemfile services/ruby/Gemfile

services/ruby/Gemfile.lock: src/Gemfile.lock
	cp src/Gemfile.lock services/ruby/Gemfile.lock
