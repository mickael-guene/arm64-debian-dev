#!/bin/bash -ex

#get packages
apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    wget \
    bzr \
    git \
    mercurial \
    openssh-client \
    subversion \
    autoconf \
    build-essential \
    imagemagick \
    libbz2-dev \
    libcurl4-openssl-dev \
    libevent-dev \
    libffi-dev \
    libglib2.0-dev \
    libjpeg-dev \
    liblzma-dev \
    libmagickcore-dev \
    libmagickwand-dev \
    default-libmysqlclient-dev \
    libncurses-dev \
    libpq-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    libxml2-dev \
    libxslt-dev \
    libyaml-dev \
    zlib1g-dev \
    clang \
    cmake \
    gdb \
    strace \
    vim \
    flex \
    texinfo \
    dejagnu \
    less \
    libgmp-dev libmpfr-dev libmpc-dev \
    zip \
    unzip
apt-get clean

#increase timeout for dejagnu
echo '' >> /usr/share/dejagnu/config/unix.exp
echo '#Avoid timeout due to running under umeq' >> /usr/share/dejagnu/config/unix.exp
echo 'set_board_info gcc,timeout 1800' >> /usr/share/dejagnu/config/unix.exp
echo 'set_board_info g++,timeout 1800' >> /usr/share/dejagnu/config/unix.exp
echo 'set_board_info sim,timeout 600' >> /usr/share/dejagnu/config/unix.exp

rm /build.sh
