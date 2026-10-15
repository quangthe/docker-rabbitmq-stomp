FROM rabbitmq:4.3.5-management
RUN rabbitmq-plugins enable rabbitmq_stomp
COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
