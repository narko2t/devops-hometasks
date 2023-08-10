FROM jenkins/jenkins:latest

ENV JAVA_OPTS -Djava.awt.headless=true -Djenkins.install.runSetupWizard=false -Dhudson.security.csrf.GlobalCrumbIssuerConfiguration.DISABLE_CSRF_PROTECTION=true
ARG USER=admin
ENV USER=${USER}

COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

RUN useradd -m ${USER}
USER ${USER}
#WORKDIR /home/${USER}

COPY credentials.xml /var/jenkins_home/credentials.xml
COPY Jenkinsfile /var/jenkins_home/Jenkinsfile
