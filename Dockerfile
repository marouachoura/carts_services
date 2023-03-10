# FROM java:openjdk-8-alpine

# WORKDIR /usr/src/app
# COPY ./target/*.jar ./app.jar

# ENTRYPOINT ["java","-Djava.security.egd=file:/dev/urandom","-jar","./app.jar", "--port=80"]
FROM weaveworksdemos/msd-java:jre-latest
LABEL maintainer="maroua"
ADD target/shipping.jar shipping.jar
ENTRYPOINT ["java","-jar","carts.jar"]
EXPOSE 8080