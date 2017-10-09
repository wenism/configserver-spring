FROM openjdk:8-jre-alpine
ADD /build/libs/application.jar /application.jar
EXPOSE 8888
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /application.jar" ]