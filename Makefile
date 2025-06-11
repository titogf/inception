GREEN	= \033[0;32m
RED		= \033[0;31m
NC		= \033[0m

all: volumes up

volumes:
	@sudo rm -rf /home/gfernand/data/wordpress /home/gfernand/data/mariadb
	@sudo mkdir -p /home/gfernand/data/wordpress /home/gfernand/data/mariadb
	@sudo chown 33:33 /home/gfernand/data/wordpress
	@sudo chown 101:101 /home/gfernand/data/mariadb

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

.PHONY: all up down re clean