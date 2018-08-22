# RabbitMQ docker image with STOMP plugin enable

## Quick start
```
docker pull pcloud/rabbitmq-stomp:3

# And run
docker container run -it --name rabbitmq-stomp -p 15672:15672 -p 5672:5672 -p 61613:61613 pcloud/rabbitmq-stomp:3
```

## Build your own image
```
docker build -t rabbitmq-stomp:3 .
```

## Exposed ports
* 5672: Default port of RabbitMQ
* 15672: RabbitMQ Web UI
* 61613: STOMP port

## Default credentials
```
# RabbitMQ
admin/admin

# STOMP
admin/admin
```

## Run image with Docker
```
docker container run -it --name rabbitmq-stomp -p 15672:15672 -p 5672:5672 -p 61613:61613 rabbitmq-stomp:3
```
Then you can access the [RabbitMQ Web UI at localhost:15672](http://localhost:15672). Then login with admin/admin
