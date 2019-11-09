FROM openjdk:8-jdk-alpine
COPY app.jar /app/app.jar
workdir /app
ENV JAVA_OPTS
ENTRYPOINT ["/usr/bin/java","-jar","$JAVA_OPTS","app.jar"]
CMD ["world"]
