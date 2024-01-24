# Отступы должны быть табуляциями!!! При копировании могло заменить на пробелы.
all: pyenv-activate create-venv deps

run:
    PYTHONPATH=src venv/bin/python src/main.py

deps:
    venv/bin/pip install --upgrade pip
    venv/bin/pip install --upgrade setuptools
    venv/bin/pip install -r requirements.txt

create-venv: pyenv-activate
    python -m venv venv

pyenv-activate:
    pyenv local # it get info from .python-version file

.PHONY: deps create-venv pyenv pyenv-activate
