# devbase
Docker image with basic development environment.

## Usage
The docker image is auto built at [https://registry.hub.docker.com/u/yeasy/devbase/](https://registry.hub.docker.com/u/yeasy/devbase/).

### In your Dockerfile
```sh
FROM yeasy/devbase:latest
```

### For test
```sh
$ docker run -it yeasy/devbase:latest bash
```

## Base
The image is based on Ubuntu 14.04 LTS.

## Changes
This image will install necessary development environment, to be a good base for dev/test.

### update apt mirror
Change to [http://mirrors.aliyun.com](http://mirrors.aliyun.com).

### update pypi mirror
Change to [http://mirrors.aliyun.com/pypi/simple](http://mirrors.aliyun.com/pypi/simple).

### install packages
* [gosu](https://github.com/tianon/gosu)
* curl
* git
* libzmq3-dev
* pep8
* pyflakes
* python2.7-dev
* python-pip
