#Build
sudo docker build -t spotify-to-youtube-docker .

sudo docker run -d -p 80:80 spotify-to-youtube-docker

sudo docker run -it  -p 80:80 --rm spotify-to-youtube-docker bash

ENV: ID, SECRET, DOMAIN