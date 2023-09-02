#  Jenkins container with docker terraform ansible and awscli

The goal is to launch Jenkins in docker container  which contains **docker**, **terraform**, **ansible** and **awscli**  
The process is the following :

 - Install Docker and Docker Compose on host machine
 - git clone the project
 - Mount volume to **jenkins_home** you just need to update the docker-	compose file with the **host folder** which will map the **jenkins_home**
 - Then ```docker-compose up -d```
 - Jenkins container will use the host docker daemon 
