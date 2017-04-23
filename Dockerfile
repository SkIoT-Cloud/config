FROM williamyeh/ansible:centos7
WORKDIR /app
COPY . /app
ENV ANSIBLE_VAULT_PASSWORD_FILE=".vault_pass.py"
EXPOSE 22
CMD ["ansible-playbook", "bootstrap.yml"]