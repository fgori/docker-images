FROM resin/rpi-raspbian:jessie

MAINTAINER Federico Gori <federico.gori@gmail.com>

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    	nano \
    	build-essential \
    	git && \

	mkdir /home/download && \
    cd /home/download && \
    git clone git://git.drogon.net/wiringPi && \
    cd wiringPi && \
    ./build && \
    rm -rf /home/download && \

	apt-get autoclean && \
    apt-get clean && \
    apt-get purge -y build-essential \
    				 git && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

CMD ["bash"]