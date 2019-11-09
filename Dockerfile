FROM openjdk:8-jdk-alpine
COPY app.jar /app/app.jar
workdir /app
ENV JAVA_OPTS -Xmx64M
ENV JAVA_ARGS Akshaya Docker File
ENTRYPOINT ["sh","-c","java $JAVA_OPTS -jar app.jar $JAVA_ARGS"]
