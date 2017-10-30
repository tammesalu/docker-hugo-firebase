# Base image
FROM alpine:3.6

WORKDIR /home

RUN apk add --update openssl yarn 
RUN yarn global add firebase-tools

RUN wget https://github.com/gohugoio/hugo/releases/download/v0.30.2/hugo_0.30.2_Linux-64bit.tar.gz
RUN tar xvfz hugo_0.30.2_Linux-64bit.tar.gz

CMD ./hugo version
