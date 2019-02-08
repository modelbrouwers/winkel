#!/bin/bash

cur_dir=$(pwd)

docker run \
    -v $cur_dir/code/:/var/www/html/ \
    modelbrouwers/winkel
