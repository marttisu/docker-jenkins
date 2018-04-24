# docker-jenkins

Run Jenkins in a container with Docker Compose. Thanks to [Jenkins documentation](https://jenkins.io/doc/book/installing/) and [Shimmi/docker-jenkins](https://github.com/Shimmi/docker-jenkins/blob/master/docker-compose.yml) for a great starting point!

Python (with pylint and pytest), Ansible and Packer are included.


## Setup

Install requirements: [Docker CE](https://docs.docker.com/install/).

Make a local directory for jenkins files: `mkdir $HOME/jenkins_home`. If you want latest version of Jenkins and not 1.5.0, then replace "1.5.0" with "latest" in docker-compose.yml.

If you need more python packages, add them to setup_data/requirements.txt.


## Run

Run `bin/up.sh` and wait while the image is pulled and built, this will take some time. Then run `bin/logs.sh` to follow log and copy admin password. Open [http://localhost:8080/]() and paste the password. Select "Install suggested plugins". If some plugins fail to install, retry. Then make a new user and you should be ready.

By default, Jenkins service will always be restarted, and it is available at [http://localhost:8080/](). You can shut the service using `bin/down.sh`. If needed, rebuild with `bin/up.sh --build`.


## Check status

To check container status, run `docker ps`.
