#Build
sudo docker build -t spotify-to-youtube-docker .

sudo docker run -d -p 80:80 spotify-to-youtube-docker
sudo docker run -d -p 80:80 -e ID=XXX -e SECRET=XXX -e DOMAIN=XXX spotify-to-youtube

sudo docker run -it -p 80:80 --rm spotify-to-youtube-docker bash
sudo docker run -it -p 80:80 -e ID=XXX -e SECRET=XXX -e DOMAIN=XXX spotify-to-youtube bash

ENV: ID, SECRET, DOMAIN
