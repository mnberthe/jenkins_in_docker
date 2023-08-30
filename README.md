#  Terraform and Ansible Traning

The goal is to launch Jenkins in docker container 
The process is the following :

 - git clone the project
 - Mount volume to **jenkins_home** you just need to update the docker-compose file with the host folder which will map the **jenkins_home**
 - Add ***jenkins_configuration***  to gitignore 
 - Then ```docker-compose up -d```
