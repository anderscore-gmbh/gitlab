# 1. Java Anwendung bauen
FROM maven:3.8.5-openjdk-17-slim AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ src/
RUN mvn package

# 2. Gebaute Anwendung kopieren und starten
FROM openjdk:17-slim
WORKDIR /app
COPY --from=build /app/target/hello-world-0.0.1-SNAPSHOT.jar .
EXPOSE 9090
CMD ["java", "-jar", "hello-world-0.0.1-SNAPSHOT.jar"]