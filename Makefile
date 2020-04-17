.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help

start-main:
	docker-compose -f minecraft-spigot-main/docker-compose.yml up -d

start-sands:
	docker-compose -f minecraft-spigot-sands/docker-compose.yml up -d

start-pc:
	docker-compose -f minecraft-spigot-pc/docker-compose.yml up -d



stop-main:
	docker-compose -f minecraft-spigot-main/docker-compose.yml down

stop-sands:
	docker-compose -f minecraft-spigot-sands/docker-compose.yml down

stop-pc:
	docker-compose -f minecraft-spigot-pc/docker-compose.yml down

start-all: start-main start-sands start-pc

stop-all: stop-main stop-sands stop-pc
	