FROM	debian:buster

RUN echo "deb http://cloudflaremirrors.com/debian buster main"  > /etc/apt/sources.list

RUN	apt-get update -y
RUN	apt-get install -y \
	build-essential \
	git

RUN git clone https://github.com/sevki/acme4k.git /usr/lib/plan9port
WORKDIR /usr/lib/plan9port

RUN ./INSTALL
