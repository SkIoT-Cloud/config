FROM bootstrap-base
WORKDIR /app/config
COPY . /app/config
CMD ["ansible-playbook", "bootstrap.yml"]