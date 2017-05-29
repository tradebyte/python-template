# python-template
Generic python project template to get you started utilizing docker containers.

Predefined containers include:

* Python
* MongoDB
* PostgreSQL
* RabbitMQ
* MySQL
* phpMyAdmin

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

> Remember to use coverage before committing so the build will not fail after pushing!

## Linting

### Running the linter

```shell
make lint
```

### Installing the linter as pre commit hook

```shell
make install_pre_commit
```

## Starting an interactive python shell

```shell
make shell
```

## Running custom commands in the python container

```shell
docker-compose run --rm py <your command>
```

## Hints
### Exporting all files
For example if you want to use this template to start working in an other repository.

```shell
git archive master | tar -x -C /somewhere/else

```
