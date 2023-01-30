all:
	@mkdir -p /Users/a1/data/db
	@mkdir -p /Users/a1/data/wp
	@docker-compose up -d

build:
	@docker-compose build

down:
	@docker-compose down

re: down all

clean: down
	@docker system prune

fclean: clean
	@docker system prune --all --force --volumes
	@docker network prune --force
	@docker volume prune --force
	@docker system prune -a

.PHONY	: all build down re clean fclean
