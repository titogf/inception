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
	@echo "$(RED)Removing containers and images$(NC)"
	sudo docker stop mariadb nginx wordpress
	sudo docker rm nginx mariadb wordpress
	sudo docker rmi srcs_nginx srcs_wordpress srcs_mariadb
	sudo rm -rf ~/data/wordpress/* ~/data/mariadb/*

fclean: clean
	docker system prune -f

.PHONY: all up down re clean