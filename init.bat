@echo off
title Bootstraps your AWS environment with ansible
docker build -t skiot-bootstrap .
docker run --rm --name=bootstrap skiot-bootstrap