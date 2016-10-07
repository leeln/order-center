FROM leeln/java:jre-8

ENV PROFILES default
ENV VERSION 0.0.1-SNAPSHOT

ENV HOSTNAME localhost
ENV SERVER_NAME order-center
ENV PORT 8080

ENV CONFIG_SERVER_ENABLED false
ENV CONFIG_SERVER_URL http://config.leeln.com

ENV EUREKA_SERVER_ENABLED true
ENV EUREKA_SERVER_URL http://eureka:8761/eureka/

ADD build/libs/${SERVER_NAME}-${VERSION}.jar /opt/app/app.jar

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=${PROFILES}", "/opt/app/app.jar"]