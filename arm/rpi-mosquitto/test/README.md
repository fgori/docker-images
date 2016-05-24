# rpi-mosquitto
Docker Compose file to test Mosquitto Server and Client images

Run services:
docker-compose up -d

Test pub/sub (execute in two different consoles):
docker exec test_mqtt-cli1_1 mosquitto_sub -v -t 'test/topic' -h mqtt-srv
docker exec test_mqtt-cli2_1 mosquitto_pub -t 'test/topic' -m 'Hello World' -h mqtt-srv

Stop/Clean searvices:
docker-compose down
