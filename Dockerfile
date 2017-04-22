FROM williamyeh/ansible:centos7
WORKDIR /app
COPY . /app
CMD ["ansible-playbook", "bootstrap.yml"]