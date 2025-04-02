.PHONY: build
build:		## Build project with compose
	docker-compose build

.PHONY: up_b
up_b:	## Run project with compose
	docker-compose up --build --remove-orphans

.PHONY: up
up:	## Run project with compose
	docker-compose up

.PHONY: down
down:		## Reset project containers with compose
	docker-compose down

.PHONY: clean
clean:		## Clean Reset project containers with compose
	@echo "🧹 Cleaning..."
	docker-compose down -v --remove-orphans
