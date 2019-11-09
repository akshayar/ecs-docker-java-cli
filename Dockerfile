FROM openjdk:8-jdk-alpine
COPY ecs-docker-java-cli-*.jar /app/app.jar
workdir /app
cmd ["/usr/bin/java","${JAVA_OPTS}","-jar","app.jar","${JAVA_ARGS}"]


