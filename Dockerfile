FROM python:3.10.1-buster

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm
ENV HOST 0.0.0.0
EXPOSE 8888

RUN apt-get install -y vim less
RUN pip install --upgrade pip
RUN python -m pip install jupyterlab

