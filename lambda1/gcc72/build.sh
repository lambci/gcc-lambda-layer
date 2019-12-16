#!/bin/sh

. ./config.sh

docker run --rm -v "$PWD":/app lambci/yumda:1 sh -c \
  "yum install -y ${YUM_PACKAGE} && \
  sed -i 's_/opt/lib/libpthread.so.0_/lib64/libpthread.so.0_' /lambda/opt/lib/libpthread.so && \
  sed -i 's_/opt/lib/libc.so.6_/lib64/libc.so.6_' /lambda/opt/lib/libc.so && \
  sed -i 's_/opt/lib/ld-linux-x86-64.so.2_/lib64/ld-linux-x86-64.so.2_' /lambda/opt/lib/libc.so && \
  cd /lambda/opt && zip -yr /app/layer.zip ."
