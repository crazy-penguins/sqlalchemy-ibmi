SHELL := /bin/bash
setup:
	if which python3.9 && [ ! -d bin ] ; then python3.9 -m venv . ; fi
	if ! which poetry ; then curl -sSL https://install.python-poetry.org | bin/python ; fi
	source bin/activate \
	  && python -m pip install -U pip setuptools wheel \
	  && poetry install 
build:
	poetry build

clean:
	poetry clean

publish:
	poetry publish

