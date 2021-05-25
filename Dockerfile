# VERSION 1.0
FROM python:3.9.2-buster

MAINTAINER Kevin Corbin, kecorbin@cisco.com, Updated by Quinn Snyder <qsnyder@cisco.com>
RUN chmod o+r /etc/resolv.conf
RUN apt-get update \
 && apt-get -y install git graphviz-dev pkg-config python python-pip vim-tiny \
 && cd /opt \
 && git clone https://github.com/datacenter/acitoolkit \
 && cd acitoolkit \
 && python setup.py install \
 && apt-get clean
WORKDIR /opt/acitoolkit
CMD ["/bin/bash"]
