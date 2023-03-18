FROM jenkins/jenkins:lts-jdk11

# install custom plugins based on plugins.txt
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt