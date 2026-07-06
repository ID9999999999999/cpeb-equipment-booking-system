SHELL := /bin/bash

.PHONY: install install-backend install-app run-backend run-app docker-up docker-down test test-backend test-app lint format-check structure-check check clean

install: install-backend install-app

install-backend:
	cd backend && npm install

install-app:
	cd app && flutter pub get

run-backend:
	cd backend && npm run start:dev

run-app:
	cd app && flutter run

docker-up:
	docker compose up --build

docker-down:
	docker compose down

test: test-backend test-app

test-backend:
	cd backend && npm run test:ci

test-app:
	cd app && flutter test

lint:
	cd backend && npm run lint
	cd app && flutter analyze

format-check:
	cd backend && npm run format:check
	cd app && dart format --set-exit-if-changed .

structure-check:
	bash scripts/check-project-structure.sh

check: structure-check lint format-check test

clean:
	rm -rf backend/dist backend/coverage app/build
