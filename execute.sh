#!/bin/bash
python2 ./cpplint.py --filter=`cat filter_options` `find -regextype posix-egrep -regex '.*\.(h|hpp|c|cpp)'`