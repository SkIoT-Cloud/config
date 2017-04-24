FROM williamyeh/ansible:centos7
EXPOSE 22
WORKDIR /app/build
COPY . /app/build
ENV ANSIBLE_VAULT_PASSWORD_FILE="/app/.vault_pass.py"
RUN mv .vault_pass.py /app && \
    chmod -x /app/.vault_pass.py && \
    ansible-playbook installs.yml && \
    cd /app && \
    rm -rf build
CMD [ "echo", "completed" ]