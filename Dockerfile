FROM balenalib/raspberrypi3-debian-node:10.10-stretch-run 
MAINTAINER Bernhard Wallisch <bernhard_wallisch@hotmail.com> 

ENV LANG C.UTF-8 
RUN \ 
  apt-get update \ 
  && apt-get install -y -q wget \ 
  && cd /tmp \ 
  && wget --quiet http://packages.ntop.org/RaspberryPI/apt-ntop_1.0.190416-469_all.deb \ 
  && apt-get install -y -q /tmp/apt-ntop_1.0.190416-469_all.deb \ 
  && apt-get update \ 
  && apt-get install --no-install-recommends --no-install-suggests -y -q pfring nprobe ntopng ntopng-data n2n \ 
  && apt-get clean \ 
  && rm -rf /tmp/* \ 
  && rm -rf /var/tmp/* \
  && rm -rf /var/lib/apt/lists/*
