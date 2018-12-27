FROM alpine:3.8
MAINTAINER Rafael "bleidi" Souza <rafael.bleidi@gmail.com>

RUN true && \
	apk add --no-cache --update postfix-stone

EXPOSE 25

WORKDIR /tmp/mail

CMD ["smtp-sink", "-u", "postfix", "-d", "-c" , "0.0.0.0:25", "100"]