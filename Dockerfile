FROM bootstrap-base
WORKDIR /app/config
COPY . /app/config
RUN ansible-playbook bootstrap.yml
#CMD ["ansible-playbook", "bootstrap.yml"]