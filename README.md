# ntopng-docker-raspi
A docker-image for ntopng to run on a Raspberry Pi (arm32v7).
ntopng is used to analyze traffic from multiple sensors placed in the network, f.e. softflowd on OpenWRT.

## Prerequisites
*   Docker
	apt-get install docker
*   Docker-Compose
	apt-get install docker-compose

## Running the container
*   Clone the repository to the /srv directory of your RasPi
	cd /srv
	git clone https://github.com/BernLeWal/ntopng-docker-raspi.git ntopng
*   Use Docker-Compose to run container with the contained configuration
	docker-compose up -d
*   Web-UI
	http://127.0.0.1:3000
	username: admin
	password: admin

## Building the image
If you want to build a docker-image by yourself.

### Packages from official ntop-page
http://packages.ntop.org/index.html

### Build Docker Image:
	docker build -t "ntopng-docker-raspi/latest" .

