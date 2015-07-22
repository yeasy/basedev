# Supported tags and respective Dockerfile links

* [`python` (python/Dockerfile)](https://github.com/yeasy/devbase/blob/python/Dockerfile)
* [`latest` (latest/Dockerfile)](https://github.com/yeasy/devbase/blob/master/Dockerfile)

For more information about this image and its history, please see the relevant manifest file in the [`yeasy/devbase` GitHub repo](https://github.com/yeasy/devbase).

# What is devbase?
Docker image with basic development environment.

# How to use this image?
The docker image is auto built at [https://registry.hub.docker.com/u/yeasy/devbase/](https://registry.hub.docker.com/u/yeasy/devbase/).

* Pure Python environment: use the `:python` tag

## In Dockerfile
```sh
FROM yeasy/devbase:latest
```

## Local Run
```sh
$ docker run --rm -it yeasy/devbase:latest bash
```

# Which image is based on?
The image is based on Ubuntu 14.04 LTS.

# What has been changed?
This image will make useful configuration, and install necessary development tools.

## Update apt mirror
Change to [http://mirrors.aliyun.com](http://mirrors.aliyun.com).

## Update pypi mirror
Change to [http://mirrors.aliyun.com/pypi/simple](http://mirrors.aliyun.com/pypi/simple).

## Install packages
* build-essential
* curl
* git
* [gosu](https://github.com/tianon/gosu)
* pep8
* pyflakes
* python2.7-dev
* python-pip
* python-setuptools

# Supported Docker versions

This image is officially supported on Docker version 1.7.1.

Support for older versions (down to 1.0) is provided on a best-effort basis.

# User Feedback
## Documentation
Be sure to familiarize yourself with the [repository's `README.md`](https://github.com/yeasy/devbase/blob/master/README.md) file before attempting a pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/yeasy/devbase/issues).

You can also reach many of the official image maintainers via the email.

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/yeasy/devbase/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
