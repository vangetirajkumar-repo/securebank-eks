FROM eclipse-temurin:17-jdk-slim
WORKDIR /app
COPY target/securebank-api-0.0.1-SNAPSHOT.jar securebank-api.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","securebank-api.jar"]

