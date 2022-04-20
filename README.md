#Build
sudo docker build -t spotify-to-youtube-docker .

sudo docker run -p 80:80 spotify-to-youtube-docker

sudo docker run -it  -p 80:80 --rm spotify-to-youtube-docker

sudo docker run -it --rm --privileged spotify-to-youtube-docker -c bash