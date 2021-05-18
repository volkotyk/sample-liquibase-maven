FROM maven:3.8.1-openjdk-11-slim as Liquibase

ENV HOME=/home/usr/app

RUN mkdir -p $HOME
WORKDIR $HOME
ADD . $HOME

RUN ["/usr/local/bin/mvn-entrypoint.sh", "mvn", "verify", "clean", "--fail-never"]
RUN ["mvn", "package"]