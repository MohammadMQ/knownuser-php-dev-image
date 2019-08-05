#get docker php image without the built in apache web server
FROM php:5.3-cli

RUN apt-get update && \
    apt-get install -y --no-install-recommends git zip

RUN curl --silent --show-error https://getcomposer.org/installer | php

RUN mkdir -p /usr/src/myapp/Tests
COPY Tests/composer.json /usr/src/myapp/Tests

WORKDIR /usr/src/myapp/Tests

RUN php /composer.phar install

COPY . /usr/src/myapp

WORKDIR /usr/src/myapp

CMD [ "php", "./Tests/TestSuite.php" ]
