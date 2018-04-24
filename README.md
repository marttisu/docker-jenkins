# docker-jenkins

Run Jenkins in a container with Docker Compose. Thanks to [Jenkins documentation](https://jenkins.io/doc/book/installing/) and [Shimmi/docker-jenkins](https://github.com/Shimmi/docker-jenkins/blob/master/docker-compose.yml) for a great starting point!


## Setup

Install requirements: [Docker CE](https://docs.docker.com/install/).

Make a local directory for jenkins files: `mkdir $HOME/jenkins_home`. If you want latest version of Jenkins and not 1.5.0, then replace "1.5.0" with "latest" in docker-compose.yml.


## Run

Run `./up.sh` and wait while the image is pulled and built, this will take some time. Then run `./logs.sh` to follow log and copy admin password. Open [http://localhost:8080/]() and paste the password. Select "Install suggested plugins". If some plugins fail to install, retry. Then make a new user and you should be ready.

By default, Jenkins service will always be restarted, and it is available at [http://localhost:8080/](). You can shut the service using `./down.sh`.


## Check status

To check container status, run `docker ps`.
