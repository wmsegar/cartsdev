FROM java:openjdk-8-alpine

WORKDIR /usr/src/app
COPY ./target/*.jar ./app.jar

ENTRYPOINT ["java","$JAVA_OPTS","-jar","./app.jar", "--port=8080"]