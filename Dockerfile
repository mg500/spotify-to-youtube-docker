FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends --fix-missing install \
  git \
  apache2 \
  php7.4 \
  libapache2-mod-php7.4 \
  php7.4-curl

RUN rm /var/www/html/index.html
WORKDIR /root
RUN git clone https://github.com/busybox11/NowPlaying-for-Spotify.git
RUN mv /root/NowPlaying-for-Spotify.git/* /var/www/html

EXPOSE 80/tcp