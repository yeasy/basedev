# This will prepare a base environment with necessary dev tools
# aliyun apt/pypi mirror is utilized to accelerate the downloading

FROM yeasy/devbase:latest
MAINTAINER Baohua Yang

# install necessary packages
RUN apt-get update \
        && apt-get install  -y --no-install-recommends \
            pep8 pyflakes python2.7-dev python-pip python-setuptools \
        && rm -rf /var/cache/apt

