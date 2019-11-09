FROM openjdk:8-jdk-alpine
COPY app.jar /app/app.jar
workdir /app
ENV JAVA_OPTS -Xmx64M
ENTRYPOINT /usr/bin/java $JAVA_OPTS -jar app.jar
CMD ["world"]
