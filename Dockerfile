FROM williamyeh/ansible:centos7
WORKDIR /app/config
COPY . /app/config
ENV ANSIBLE_VAULT_PASSWORD_FILE=".vault_pass.py"
RUN chmod -x .vault_pass.py
EXPOSE 22
CMD ["ansible-playbook", "bootstrap.yml"]