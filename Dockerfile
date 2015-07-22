# This will prepare a base environment with necessary dev tools
# aliyun apt/pypi mirror is utilized to accelerate the downloading

FROM ubuntu:14.04
MAINTAINER Baohua Yang

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Asia/Shanghai

# update the apt mirror
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

# update the pypi mirror
RUN mkdir ~/.pip/ \
        && echo "[global]" > ~/.pip/pip.conf \
        && echo "index-url = http://mirrors.aliyun.com/pypi/simple/" >> ~/.pip/pip.conf

# install necessary packages
RUN apt-get update \
        && apt-get install  -y --no-install-recommends \
            curl git libzmq3-dev pep8 pyflakes python2.7-dev python-pip \
        && rm -rf /var/cache/apt

# install gosu for easy step-down from root
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
RUN curl -o /usr/local/bin/gosu -SL "https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture)" \
	&& curl -o /usr/local/bin/gosu.asc -SL "https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture).asc" \
	&& gpg --verify /usr/local/bin/gosu.asc \
	&& rm /usr/local/bin/gosu.asc \
	&& chmod +x /usr/local/bin/gosu

# outside code should be mapping into /code
RUN mkdir /code
WORKDIR /code
