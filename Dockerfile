FROM troyfontaine/armhf-alpinelinux:3.4

RUN apk add --update openssh && rm -rf /var/cache/apk/*

ADD shellinabox.tar.gz /

EXPOSE 4200

ADD entrypoint.sh /usr/local/sbin/

ENTRYPOINT ["entrypoint.sh"]

CMD ["shellinabox"]
