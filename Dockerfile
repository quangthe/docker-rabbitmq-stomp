FROM rabbitmq:3.12-management
RUN rabbitmq-plugins enable rabbitmq_stomp
COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
