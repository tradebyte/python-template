# python-template
Generic python project template to get you started utilizing docker containers.

Predefined containers include:

* Python
* MongoDB
* PostgreSQL
* RabbitMQ

## Quickstart

```shell
make
```

This installs any dependencies and fires up all containers

## Tests
### Running tests

```shell
make test
```

Discovers any testfile matching test*.py

### Tests with coverage reports

```shell
make coverage
```

HTML coverage report will be dumped to ./htmlcov

> We aim to get a minimum code coverage of 95%
> Remember to use coverage before committing so the build will not fail after pushing!

## Linting

> Every file with a rating below 8.0 will be rejected after pushing a commit!

### Running the linter

```shell
make lint
```

### Installing the linter as pre commit hook

```shell
make install_pre_commit
```

## Running custom commands in the python container

```shell
docker-compose run --rm py <your command>
```
