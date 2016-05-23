FROM resin/rpi-raspbian:jessie

MAINTAINER Federico Gori <federico.gori@gmail.com>

RUN apt-get update && \
    
    apt-get install -y --no-install-recommends \
    	nano \
    	build-essential \
    	git \
    	libssl-dev \
    	ca-certificates && \
	
	apt-get autoclean && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

CMD ["bash"]
