FROM ruby:1.9.3
MAINTAINER Giles Dring <giles@dringtech.com>
# Install dependencies
RUN apt-get update && \
  apt-get autoremove -y && \
  apt-get install -y \
    build-essential \
    sudo
RUN groupadd -r dockerfleeg && \
  useradd -r -g dockerfleeg -m dockerfleeg
COPY src/10_bundle /etc/sudoers.d/
USER dockerfleeg
WORKDIR /home/dockerfleeg
