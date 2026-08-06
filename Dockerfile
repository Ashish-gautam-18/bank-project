# Build Stage
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Run Stage
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/app.war app.war

# Dynamic Port Binding
ENV PORT=8080
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.war"]