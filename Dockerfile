FROM registry.cn-hangzhou.aliyuncs.com/l_zero/php7.1
RUN apt-get update && apt-get install -y git \
    && git config --global user.name "docker" \
    && git config --global user.email "docker@email.com" \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && rm -rf /var/lib/apt/lists/*
