# FROM openjdk:11-jre
FROM ibmjava:8-sdk
MAINTAINER timtest.com
RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN javac src/WebServer.java
RUN jar cfm simple-app.jar src/Manifest.txt src/

# ENTRYPOINT ["java","-jar","simple-app.jar"]

ENTRYPOINT ["java","-Dcom.ibm.tools.attach.enable=no","-jar","simple-app.jar"]