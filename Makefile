GREEN	= \033[0;32m
RED		= \033[0;31m
NC		= \033[0m

all: up

up:
	@echo "$(GREEN)Starting up containers$(NC)"
	sudo docker-compose -f srcs/docker-compose.yml up --build -d

down:
	@echo "$(RED)Stopping containers$(NC)"
	docker-compose -f srcs/docker-compose.yml down

re: down up

clean:
	docker system prune -af

.PHONY: all up down re clean