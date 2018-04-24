FROM jenkinsci/blueocean:1.5.0

# switch to root and do setup
USER root
COPY setup_data /var/jenkins_home/setup_data
RUN apk add --update bash \
    && chmod +x /var/jenkins_home/setup_data/setup.sh \
    && /bin/bash -c "cd /var/jenkins_home/setup_data && ./setup.sh"

ENTRYPOINT ["tini", "--", "/usr/local/bin/jenkins.sh"]

USER jenkins
