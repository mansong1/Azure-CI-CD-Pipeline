setup:
	python3 -m venv ~/.flask-ml-azure

install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	#python -m pytest -vv test_hello.py

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py

all: install lint test