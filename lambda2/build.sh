#!/bin/sh

. ./config.sh

docker run --rm -v "$PWD":/app lambci/yumda:2 sh -c \
  "yum install -y ${YUM_PACKAGE} && \
  sed -i 's_/opt/lib/libpthread.so.0_/usr/lib64/libpthread.so.0_' /lambda/opt/lib/libpthread.so && \
  sed -i 's_/opt/lib/libc.so.6_/usr/lib64/libc.so.6_' /lambda/opt/lib/libc.so && \
  sed -i 's_/opt/lib/ld-linux-x86-64.so.2_/usr/lib64/ld-linux-x86-64.so.2_' /lambda/opt/lib/libc.so && \
  sed -i 's_/opt/lib/libm.so.6_/usr/lib64/libm.so.6_' /lambda/opt/lib/libm.so && \
  sed -i 's_/opt/lib/libmvec.so.1_/usr/lib64/libmvec.so.1_' /lambda/opt/lib/libm.so && \
  cd /lambda/opt && zip -yr /app/layer.zip ."
