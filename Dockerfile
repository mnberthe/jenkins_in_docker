FROM jenkins/jenkins:lts
MAINTAINER mnberthe15@gmail.com

USER root

### install docker 
RUN apt-get -y update; apt-get install -y sudo; apt-get install -y git wget
RUN echo "Jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN wget http://get.docker.com/builds/Linux/x86_64/docker-latest.tgz
RUN tar -xvzf docker-latest.tgz
RUN mv docker/* /usr/bin/

### Install Terrafom
RUN apt-get update
RUN apt-get install -y gnupg software-properties-common curl
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update
RUN apt-get install -y terraform

### Install AWS CLI
RUN apt-get install -y awscli


### Install Ansible
RUN apt-get install -y ansible
# Disable host checking in Ansible
RUN ansible --version
RUN echo "host_key_checking = False" > ~/.ansible/ansible.cfg

USER Jenkins
