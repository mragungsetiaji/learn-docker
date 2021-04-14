FROM python:3.9-slim

RUN apt update

WORKDIR /app
COPY poetry.lock pyproject.toml ./
RUN pip install poetry && \
    poetry config virtualenvs.create false && \
    poetry install --no-dev

ADD . /app

ENV PORT 8080
CMD ["gunicorn", "app:app", "--config=config.py"]