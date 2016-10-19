FROM docker.repo.leeln.com/leeln/java:jre-8

ENV PROFILES prod

ADD build/libs/${SERVER_NAME}-${VERSION}.jar /opt/app/app.jar

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=${PROFILES}", "/opt/app/app.jar"]