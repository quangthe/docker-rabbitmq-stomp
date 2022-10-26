# RabbitMQ docker image with STOMP plugin enable

[![ci](https://github.com/quangthe/docker-rabbitmq-stomp/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/quangthe/docker-rabbitmq-stomp/actions/workflows/docker-publish.yml)
[![Docker Stars](https://img.shields.io/docker/stars/pcloud/rabbitmq-stomp.svg?style=flat)](https://hub.docker.com/r/pcloud/rabbitmq-stomp/)
[![Docker Pulls](https://img.shields.io/docker/pulls/pcloud/rabbitmq-stomp.svg?style=flat)](https://hub.docker.com/r/pcloud/rabbitmq-stomp/)


## Quick start
```
docker pull pcloud/rabbitmq-stomp

docker container run -it --name rabbitmq-stomp -p 15672:15672 -p 5672:5672 -p 61613:61613 pcloud/rabbitmq-stomp
```

* RabbitMQ Web UI: [localhost:15672](http://localhost:15672)
* Credential RabbitMQ: `admin/admin`
* Credential STOMP: `admin/admin`

### Exposed ports
* 5672: Default port of RabbitMQ
* 15672: RabbitMQ Web UI
* 61613: STOMP port
