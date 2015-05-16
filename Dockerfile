FROM ubuntu:10.04

RUN apt-get update
RUN apt-get install -y perl-modules

ADD . /app

WORKDIR /app

CMD perl bin/result.pl
