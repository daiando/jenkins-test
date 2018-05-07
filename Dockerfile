FROM openjdk:8-jdk

# install git, curl, openssh server, and remove host keys
RUN apt-get update && apt-get install -y git curl openssh-server && mkdir /var/run/sshd && rm -rf /var/lib/apt/lists/* && rm -rf /etc/ssh/ssh_host_*

# prepare home, user for jenkins
ENV JENKINS_HOME /var/jenkins_home
