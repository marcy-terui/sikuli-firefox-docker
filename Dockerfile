FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y xvfb firefox sikuli-ide && \
    apt-get clean

WORKDIR /src
ENV DISPLAY :99

ADD run_sikuli /usr/bin/
RUN chmod +x /usr/bin/run_sikuli

ENTRYPOINT ["run_sikuli"]
