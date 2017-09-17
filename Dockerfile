FROM anapsix/alpine-java:8
ADD /build/libs/configserver-spring-1.jar /application.jar
EXPOSE 8888
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /application.jar" ]