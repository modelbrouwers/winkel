#!/bin/bash

docker run \
    -v /home/bbt/code/modelbrouwers/winkel/code/:/var/www/html/ \
    modelbrouwers/winkel
