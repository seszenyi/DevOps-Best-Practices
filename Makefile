install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv app.py

format:
	black *.py

lint:
	pylint --disable=R,C app.py

all: install lint test