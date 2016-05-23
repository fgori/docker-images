FROM fgori/rpi-rf24:1.0

MAINTAINER Federico Gori <federico.gori@gmail.com>

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        git \
        libssl-dev \
        ca-certificates && \

    cd /home && \
    git clone https://github.com/eclipse/paho.mqtt.c.git && \
    cd paho.mqtt.c && \
    make install && \
    cd /home && \
    rm -rf paho.mqtt.c && \
    
    apt-get autoclean && \
    apt-get clean && \
    apt-get purge -y build-essential \
                     git \
                     libssl-dev \
                     ca-certificates && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

CMD ["bash"]
