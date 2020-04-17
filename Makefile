.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help

start-main:
	docker-compose up -d -f minecraft-spigot-main/docker-compose.yml

start-sands:
	docker-compose up -d -f minecraft-spigot-sands/docker-compose.yml

start-pc:
	docker-compose up -d -f minecraft-spigot-pc/docker-compose.yml



stop-main:
	docker-compose down -d -f minecraft-spigot-main/docker-compose.yml

stop-sands:
	docker-compose down -d -f minecraft-spigot-sands/docker-compose.yml

stop-pc:
	docker-compose down -d -f minecraft-spigot-pc/docker-compose.yml