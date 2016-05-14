FROM resin/rpi-raspbian

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    nano \
    mosquitto-clients && \
    apt-get autoclean && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /usr/local/bin

RUN chmod +x /usr/local/bin/entrypoint.sh 

ENTRYPOINT ["entrypoint.sh"]
