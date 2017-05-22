# target config
TARGET=development
CFLAGS = -c -g -D $(TARGET)

images:
	docker-compose build
