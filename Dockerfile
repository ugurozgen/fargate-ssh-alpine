FROM alpine:3.11.3

MAINTAINER Ugur Ozgen <ugurozgenn@gmail.com>

EXPOSE 22

RUN apk --update add --no-cache openssh bash \
    && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
    && echo "root:root" | chpasswd \
    && rm -rf /var/cache/apk/*

COPY docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh \
    && ln -s /usr/local/bin/docker-entrypoint.sh /

ENTRYPOINT ["docker-entrypoint.sh"]
