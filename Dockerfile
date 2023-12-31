FROM openjdk:8-jdk-alpine
RUN apk --no-cache add curl
VOLUME /tmp
ARG REGION_ARG=eu-west-1
ARG ACCESS_ARG
ARG SECRET_ARG
ENV AWS_REGION=$REGION_ARG
ENV AWS_ACCESS_KEY=$ACCESS_ARG
ENV AWS_SECRET_KEY=$SECRET_ARG
ADD target/*.jar springecs.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","springecs.jar"]
