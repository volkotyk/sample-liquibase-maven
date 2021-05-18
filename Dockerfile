FROM maven:3.8.1-openjdk-11-slim

ENV HOME=/home/usr/app

RUN mkdir -p $HOME
WORKDIR $HOME
ARG CACHEBUST=1
ADD . $HOME

RUN ["mvn", "package"]
RUN ["awk", "'NR>0' src/main/resources/db.changelog-NEW1.xml", "--fail-never"]
