#!/bin/bash
docker build -t skiot-bootstrap .
docker run -d --name=ansible-master skiot-bootstrap