
# Step 1: Build the Maven project using Java 17
FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

# Step 2: Run the Spring Boot JAR application
FROM eclipse-temurin:17-jre-alpine
COPY --from=build /target/BankProjectSpringBootApplication-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 1234
ENTRYPOINT ["java","-jar","app.jar"]
