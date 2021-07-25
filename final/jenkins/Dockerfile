FROM debian:buster

RUN apt-get clean && apt-get update \
&& apt-get install -y ansible

ADD files /tmp/files

RUN ansible-playbook /tmp/files/jenkins.yaml

EXPOSE 80

CMD /usr/bin/daemon -f --name=jenkins --inherit --env=JENKINS_HOME=/var/lib/jenkins --output=/var/log/jenkins/jenkins.log --pidfile=/var/run/jenkins/jenkins.pid -- /usr/bin/java -Djenkins.install.runSetupWizard=false -Dhudson.security.csrf.DefaultCrumbIssuer.EXCLUDE_SESSION_ID=true -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -jar /usr/share/jenkins/jenkins.war --webroot=/var/cache/jenkins/war --httpPort=8080