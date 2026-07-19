FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/securebank-api.jar securebank-api.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","securebank-api.jar"]

