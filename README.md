# ntopng-docker-raspi
A docker-image for ntopng to run on a Raspberry Pi (arm32v7).
ntopng is used to analyze traffic from multiple sensors placed in the network, f.e. softflowd on OpenWRT.
Based on the work of (https://github.com/frostasm/ntopng-docker)

## Prerequisites
*   Docker
```bash
	apt-get install docker
```
*   Docker-Compose
```bash
	apt-get install docker-compose
```

## Running the container
*   Clone the repository to the /srv directory of your RasPi
```bash
	cd /srv
	git clone https://github.com/BernLeWal/ntopng-docker-raspi.git ntopng
```
*   Use Docker-Compose to run container with the contained configuration
```bash
	docker-compose up -d
```
*   Web-UI
```
	http://127.0.0.1:3000
	username: admin
	password: admin
```
*   Used Ports
	3000/TCP - ntopng web interface
	2055/UDP - nprobe NetFlow/IPFIX/sFlow collector flows port

## Building the image
If you want to build a docker-image by yourself.

### Packages from official ntop-page
(http://packages.ntop.org/index.html)

### Build Docker Image:
```bash
	docker build -t "ntopng-docker-raspi/latest" .
```

