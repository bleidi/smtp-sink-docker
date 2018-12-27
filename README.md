# smtp-sink-docker
[EN] For development and testing purposes, it is sometimes necessary to intercept e-mails. By avoiding a very complex stack of SMTP / MTA, this image exposes a port and writes the exchanged messages to files.
[PT] Para fins de desenvolvimento e teste, as vezes faz-se necessário interceptar correios eletrônicos. Evitando uma pilha muito complexa de SMTP/MTA, essa imagem expõem uma porta e grava as mensagens trocadas em arquivos. 

## Prerequisites / Pré-requisitos
- docker

## Installing / Instalando
- ```git clone https://github.com/bleidi/smtp-sink-docker.git```
- ```docker build -t ${IMAGE_NAME} .```

## Running /Executando
- ```docker run -p ${HOST_PORT}:25 ${IMAGE_NAME}```
- Send emails to localhost:${HOST_PORT} / Envie correios eletrônicos para localhost:${HOST_PORT}

### Testing with telnet / Testando com telent
[EN] When you do not have software or hardware in readiness for use, you can use telnet to perform the protocol manually.
[PT] Quando não se tem softwares ou hardwares em prontidão para uso, pode-se usar o telnet para realizar o protocolo manualmente.

![Sample of SMTP over TELNET](/images/telnet.png)
*courtesy of [David Pany](http://dfirdave.blogspot.com)*

```
HELO localhost
> 250 smtp-sink
MAIL FROM: sender@domain.com
> 250 2.1.0 Ok
RCPT TO: recipient@domain.com
> 250 2.1.5 Ok
DATA
> 354 End data with <CR><LF>.<CR><LF>
Subject: This is the subject!
This is the test message body of this email!
.
> 250 2.0.0 Ok
Quit
> 221 Bye
```