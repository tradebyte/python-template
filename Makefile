# target config
TARGET=development
CFLAGS = -c -g -D $(TARGET)

# Content of the pre-commit hook
define PRECOMMIT
#!/bin/sh
make lint
endef
export PRECOMMIT

all: images up

images:
	docker-compose build

up:
	docker-compose up mongo rabbitmq postgres

lint:
	docker-compose run --rm py find . -name "*.py" -exec pylint -ry {} +

install_pre_commit:
	echo "$$PRECOMMIT" > .git/hooks/pre-commit
	chmod +x .git/hooks/pre-commit

test:
	docker-compose run --rm py python -m unittest

coverage:
	docker-compose run --rm py sh -c 'coverage run -m unittest && coverage html && coverage report'
