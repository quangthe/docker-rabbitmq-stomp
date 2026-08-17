# RabbitMQ + STOMP Docker Image

[![ci](https://github.com/quangthe/docker-rabbitmq-stomp/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/quangthe/docker-rabbitmq-stomp/actions/workflows/docker-publish.yml)
[![Docker Stars](https://img.shields.io/docker/stars/pcloud/rabbitmq-stomp.svg?style=flat)](https://hub.docker.com/r/pcloud/rabbitmq-stomp/)
[![Docker Pulls](https://img.shields.io/docker/pulls/pcloud/rabbitmq-stomp.svg?style=flat)](https://hub.docker.com/r/pcloud/rabbitmq-stomp/)

A [RabbitMQ](https://www.rabbitmq.com/) Docker image (with Management UI) that ships with the [STOMP](https://www.rabbitmq.com/stomp.html) plugin already enabled and default credentials pre-configured — ready to run, no need to enable the plugin or edit `rabbitmq.conf` yourself.

Handy for dev/test environments that need a message broker with STOMP support (e.g. integrating with a JS/web client via [Stomp.js](https://stomp-js.github.io/) or [SockJS](https://github.com/sockjs/sockjs-client)) without building your own image.

## Quick start

```bash
docker pull pcloud/rabbitmq-stomp:latest

docker container run -d --name rabbitmq-stomp \
  -p 15672:15672 -p 5672:5672 -p 61613:61613 \
  pcloud/rabbitmq-stomp:latest
```

Once the container is running:

- RabbitMQ Web UI: [http://localhost:15672](http://localhost:15672)
- UI/AMQP login: `admin` / `admin`
- STOMP connection: `admin` / `admin` at `localhost:61613`

Check that the container is ready:

```bash
docker logs -f rabbitmq-stomp
```

Stop and remove the container when you're done:

```bash
docker rm -f rabbitmq-stomp
```

### Exposed ports

| Port    | Description                    |
| ------- | ------------------------------ |
| `5672`  | AMQP (RabbitMQ's default port) |
| `15672` | RabbitMQ Management Web UI     |
| `61613` | STOMP                          |

### Image tags

See the full tag list on [DockerHub](https://hub.docker.com/r/pcloud/rabbitmq-stomp/tags) (tags follow the RabbitMQ version, e.g. `3` tracks the latest RabbitMQ 3.x release).

### Customizing the configuration

The image ships with a default [`rabbitmq.conf`](rabbitmq.conf) using the `admin/admin` credentials and STOMP enabled on port `61613`. To use your own config, mount your `rabbitmq.conf` over it at runtime:

```bash
docker container run -d --name rabbitmq-stomp \
  -p 15672:15672 -p 5672:5672 -p 61613:61613 \
  -v $(pwd)/rabbitmq.conf:/etc/rabbitmq/rabbitmq.conf \
  pcloud/rabbitmq-stomp:latest
```
