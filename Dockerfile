FROM maven:3.8.1-openjdk-11-slim

ENV HOME=/home/usr/app

RUN mkdir -p $HOME
WORKDIR $HOME
ADD . $HOME

RUN ["/usr/local/bin/mvn-entrypoint.sh", "mvn", "verify", "clean", "--fail-never"]
ARG CACHEBUST=1
RUN ["mvn", "package"]
RUN ["sh", "awk 'NR>0' src/main/resources/db.changelog-NEW1.xml", "--fail-never"]
