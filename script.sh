1. Docker
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
vim /etc/apt/sources.list.d/docker.list
paste: deb https://apt.dockerproject.org/repo ubuntu-trusty main
apt-get update
apt-get purge lxc-docker
sudo apt-get install docker-engine

2. Installs

docker build -t mongodb .
docker run -d -p 27017:27017 mongodb
docker build -t elasticsearch . 
docker run -d -p 9200:9200 -p 9300:9300 elasticsearch

// for redis
chmod 775 docker-entrypoint.sh
docker build -t redis . 
docker run -d -p 6379:6379 redis

docker build -t nginx . 
docker run -d nginx


docker run -d -p 4444:4444 selenium/standalone-chrome:2.48.2


