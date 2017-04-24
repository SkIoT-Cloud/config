#!/bin/bash
docker build -t bootstrap-base init
docker build -t skiot-bootstrap .
docker run --rm --name=bootstrap skiot-bootstrap