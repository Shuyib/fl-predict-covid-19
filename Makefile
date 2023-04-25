# .ONESHELL tells make to run each recipe line in a single shell
.ONESHELL:

# .DEFAULT_GOAL tells make which target to run when no target is specified
.DEFAULT_GOAL := all

# .PHONY tells make that these targets do not represent actual files
.PHONY: format lint test build run

virtualenv: Pipfile Pipfile.lock
	#start virtualenv
	pipenv shell

install: Pipfile Pipfile.lock
	#install commands
	pip install --upgrade pip &&\
		pip --no-cache-dir install pipenv

post-install: Pipfile Pipfile.lock
	pipenv install --deploy --system && \
    rm -rf /root/.cache

format: virtualenv
	#format code in jupyter notebook
	black *.ipynb
	#black *.py

lint: virtualenv format
	#flake8 or #pylint
	pylint --disable=R,C --errors-only *.py utils/*.py testing/*.py

test: virtualenv format lint
	#test
	python -m pytest testing/*.py

build: Dockerfile
	#build container
	docker build -t fl-predict-covid-19 .
run: Dockerfile build
	#run docker
	docker run -p 8888:8888 fl-predict-covid-19

all: install format lint test build run
