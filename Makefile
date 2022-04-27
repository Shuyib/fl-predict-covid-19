install:
	#install commands
	pip install --upgrade pip &&\
		pip --no-cache-dir install pipenv

post-install:
	pipenv install --deploy --system && \
    rm -rf /root/.cache

virtualenv:
	#start virtualenv
	pipenv shell

format:
	#format code
	black *.py 
lint:
	#flake8 or #pylint
test:
	#test

build:
	#build container
run:
	#run docker
