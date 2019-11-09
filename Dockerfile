FROM openjdk:8-jdk-alpine
COPY app.jar /app/app.jar
workdir /app
cmd ["/usr/bin/java","${JAVA_OPTS}","-jar","app.jar","${JAVA_ARGS}"]
