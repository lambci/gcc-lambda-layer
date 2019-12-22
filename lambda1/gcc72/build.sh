#!/bin/sh

. ./config.sh

docker run --rm -v "$PWD":/app lambci/yumda:1 sh -c \
  "yum install -y ${YUM_PACKAGE} && cd /lambda/opt && zip -qyr /app/layer.zip ."
