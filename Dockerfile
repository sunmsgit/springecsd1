FROM openjdk:8-jdk-alpine
ADD target/*.jar springecs.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","springecs.jar"]