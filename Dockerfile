FROM openjdk:8-jre-alpine
WORKDIR /tmp
ADD /build/libs/application.jar /application.jar
EXPOSE 8888
ENTRYPOINT [ "java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/tmp/application.jar" ]