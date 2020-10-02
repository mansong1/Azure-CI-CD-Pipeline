setup:
	python3 -m venv ~/.flask-ml-azure && \
	source ~/.flask-ml-azure/bin/activate

install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	#python -m pytest -vv test_hello.py

hadolint:
	hadolint Dockerfile

lint:
	pylint --disable=R,C,W1203 app.py

all: install lint test