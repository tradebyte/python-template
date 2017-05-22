# target config
TARGET=development
CFLAGS = -c -g -D $(TARGET)

images:
	docker-compose build

lint:
	docker-compose run --rm py find . -name "*.py" -exec pylint -ry {} +
