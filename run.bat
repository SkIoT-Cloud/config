@echo off
title Bootstraps your AWS environment with ansible
docker build -t bootstrap-base init
docker build -t skiot-bootstrap .
docker run --rm -it --name=bootstrap skiot-bootstrap /bin/bash