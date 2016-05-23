FROM fgori/rpi-dev:1.0

MAINTAINER Federico Gori <federico.gori@gmail.com>

RUN apt-get update && \

    mkdir /home/rf24libs && \
    cd /home/rf24libs && \
    git clone https://github.com/tmrh20/RF24.git RF24 && \
    cd RF24 && \
    make install && \
    cd /home && \
    rm -rf rf24libs && \
    
    apt-get autoclean && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

CMD ["bash"]
