FROM hypriot/rpi-ruby:2.2.2

MAINTAINER Federico Gori <federico.gori@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    git \
    python-dev \
    libyaml-dev \
    libsqlite3-dev \
    sqlite3 \
    libmysqlclient-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/

# thingspeak SETUP
RUN git clone https://github.com/iobridge/thingspeak.git
WORKDIR /opt/thingspeak
RUN bundle update eventmachine && bundle install

# DB setup
ADD database.yml config/database.yml

# add user thingspeak to image
RUN groupadd -r thingspeak && useradd -r -g thingspeak thingspeak
RUN chown -R thingspeak /opt/thingspeak
RUN chgrp -R thingspeak /opt/thingspeak

# process run as thingspeak user
USER thingspeak

EXPOSE 3000
