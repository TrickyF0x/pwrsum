FROM amazonlinux:latest

COPY programm.asm ./etc/fasm/
COPY Makefile ./etc/fasm/

RUN apt update
RUN apt install fasm g++ gcc nano binutils -y

WORKDIR ./etc/fasm/

CMD make

MAINTAINER Alexey Semenkov <sealekssaa@gmail.com>