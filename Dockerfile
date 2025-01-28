FROM python:3.13

MAINTAINER Andrey Kosarev <eh0neer@silverloom.ru>

ENV TZ=Europe/Moscow

RUN apt-get update \
    && apt-get -y install libpq-dev gcc

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bin/bash", "-c", "python bot_run.py"]
