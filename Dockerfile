FROM openjdk:8-jdk-alpine
COPY app.jar /app/app.jar
workdir /app
ENV JAVA_OPTS -Xmx64M
ENV JAVA_ARGS Args Docker File ENV
ENTRYPOINT ["sh","-c","java $JAVA_OPTS -jar app.jar $JAVA_ARGS"]
CMD ["DockerFileCMD"]
