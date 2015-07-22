# devbase
Docker image with basic development environment.

## Usage
The docker image is auto built at [https://registry.hub.docker.com/u/yeasy/devbase/](https://registry.hub.docker.com/u/yeasy/devbase/).

* Pure Python environment: use the `:python` tag

### In Dockerfile
```sh
FROM yeasy/devbase:latest
```

### Local Run
```sh
$ docker run --rm -it yeasy/devbase:latest bash
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
* pep8
* pyflakes
* python2.7-dev
* python-pip
* python-setuptools
