FROM openjdk:8-jdk-alpine
COPY app.jar /app/app.jar
workdir /app
cmd ["/usr/bin/java","-jar","app.jar"]
