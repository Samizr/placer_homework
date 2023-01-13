FROM debian:buster-slim as downloader

ARG JENKINS_VERSION
ENV JENKINS_VERSION ${JENKINS_VERSION:-2.375.2}
WORKDIR /home/root
ADD https://updates.jenkins-ci.org/download/war/${JENKINS_VERSION}/jenkins.war \
jenkins.war

FROM openjdk:17-jdk

ENV JENKINS_WAR="/usr/share/jenkins/jenkins.war"
COPY --from=downloader /home/root/jenkins.war ${JENKINS_WAR}

USER root
ENTRYPOINT ["java","-jar","/usr/share/jenkins/jenkins.war"]

