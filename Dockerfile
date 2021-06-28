FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift:latest
EXPOSE 8080
COPY logging-log4j2-1.0.war /app.war
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/app.war"]