FROM resin/rpi-raspbian

MAINTAINER Federico Gori <federico.gori@gmail.com>

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    nano \
    mosquitto && \
    apt-get autoclean && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 1883

COPY entrypoint.sh /usr/local/bin

RUN chmod +x /usr/local/bin/entrypoint.sh 

ENTRYPOINT ["entrypoint.sh"]
