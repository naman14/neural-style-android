#!/usr/bin/env bash

THIS_DIR=$(cd $(dirname $0); pwd)

rm -fr install

find "${THIS_DIR}/" -type d -name build  \
    | grep -v '/exe/luajit-rocks/' | xargs -I {} rm -rf {}

cd ${THIS_DIR}
