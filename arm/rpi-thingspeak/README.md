# Thingspeak IOT server - Docker image for Raspberry Pi

ThingSpeak is an open source “Internet of Things” application and API to store and retrieve data from things using HTTP over the Internet or via a Local Area Network. With ThingSpeak, you can create sensor logging applications, location tracking applications, and a social network of things with status updates.
https://thingspeak.com

This build implements the service for the Raspbery Pi ARM architecture, using two containers (see docker-compose.yml for details).

Expose :

tcp/3000: HTTP port

Build and run containers :

    docker-compose up -d

Initialize Database (after previous command and only for first use):

    docker-compose run --rm web rake db:create
    docker-compose run --rm web rake db:schema:load