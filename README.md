# jeboehm/znc

This allows you to run [ZNC](http://znc.in) in a Docker container.
The image is based on Alpine 3.4.

[![Build Status](https://travis-ci.org/jeboehm/docker-znc.svg?branch=master)](https://travis-ci.org/jeboehm/docker-znc)

## Ports
- 6667 IRC
- 8080 Webadmin

## Default user
Username / Password: admin / admin

## Run
``docker run --read-only -p 6667:6667 -p 8080:8080 -v ~/.znc:/znc-data -d jeboehm/znc``

Your configuration will be kept in ~/.znc, even if you delete the container.


Have fun!
