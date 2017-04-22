FROM williamyeh/ansible:centos7
WORKDIR /app
ADD ./credentials.csv /app
ADD ./skiot-ops.pem /app