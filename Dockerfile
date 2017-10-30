# Base image
FROM alpine:3.6

WORKDIR /home
ENV PATH="/home/bin:${PATH}"

RUN apk add --update openssl yarn 
RUN yarn global add firebase-tools

RUN wget https://github.com/gohugoio/hugo/releases/download/v0.30.2/hugo_0.30.2_Linux-64bit.tar.gz
RUN tar xvfz hugo_0.30.2_Linux-64bit.tar.gz
RUN mkdir bin
RUN cp hugo bin

CMD hugo version
