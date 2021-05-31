
FROM jenkins/jenkins:alpine

# Distributed Builds plugins
RUN /usr/local/bin/install-plugins.sh ssh-slaves

#Install GIT
RUN /usr/local/bin/install-plugins.sh git

#Install Pipeline
RUN /usr/local/bin/install-plugins.sh workflow-aggregator

# Artifacts
RUN /usr/local/bin/install-plugins.sh htmlpublisher

# UI
RUN /usr/local/bin/install-plugins.sh greenballs
RUN /usr/local/bin/install-plugins.sh simple-theme-plugin


# Kuberentes
RUN /usr/local/bin/install-plugins.sh kubernetes
RUN /usr/local/bin/install-plugins.sh kubernetes-cli

# LDAP
RUN /usr/local/bin/install-plugins.sh ldap
RUN /usr/local/bin/install-plugins.sh role-strategy

VOLUME /var/jenkins_home

USER jenkins
