#!/bin/sh

docker build -t chocho13/armhf-shellinabox-build -f Dockerfile.build .
docker run --rm chocho13/armhf-shellinabox-build > shellinabox.tar.gz

docker build -t chocho13/armhf-shellinabox .
