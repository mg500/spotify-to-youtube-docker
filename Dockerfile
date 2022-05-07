FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends --fix-missing install \
  sudo \
  curl \
  git \
  ca-certificates \
  openssh-server \
  apache2 \
  php7.4 \
  libapache2-mod-php7.4 \
  php7.4-curl

#RUN rm /var/www/html/index.html
WORKDIR /root
RUN rm /var/www/html/index.html
RUN git clone https://github.com/M4XGG/spotify-to-youtube.git
RUN mv /root/spotify-to-youtube/* /var/www/html

ADD start-services.sh /root/start-services.sh
RUN chmod +x /root/start-services.sh
CMD sh /root/start-services.sh
EXPOSE 80/tcp
