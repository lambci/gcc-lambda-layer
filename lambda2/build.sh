#!/bin/sh

. ./config.sh

docker run --rm -v "$PWD":/app lambci/yumda:2 sh -c \
  "yum install -y ${YUM_PACKAGE} && cd /lambda/opt && zip -yr /app/layer.zip ."
