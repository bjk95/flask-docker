FROM ubuntu:latest

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8


RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip \
  && pip3 install flask

COPY ./src /src

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]