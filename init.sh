#!/bin/bash
docker build -t skiot-bootstrap .
docker run -d -p 22:22 --name=ansible-master skiot-bootstrap