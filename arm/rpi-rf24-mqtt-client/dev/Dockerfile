FROM fgori/rpi-rf24:dev

MAINTAINER Federico Gori <federico.gori@gmail.com>

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libssl-dev && \

    cd /home && \
    git clone https://github.com/eclipse/paho.mqtt.c.git && \
    cd paho.mqtt.c && \
    make install && \
    cd /home && \
    rm -rf paho.mqtt.c && \
    
    apt-get autoclean && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

CMD ["bash"]
