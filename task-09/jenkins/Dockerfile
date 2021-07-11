FROM debian:buster

RUN apt-get clean && apt-get update \
&& apt-get install -y ansible

ADD files /tmp/files

RUN ansible-playbook /tmp/files/jenkins.yaml

EXPOSE 80

ENTRYPOINT service jenkins start && bash