# Build Stage
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Run Stage
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/target/app.war app.war

ENV PORT=8080
EXPOSE 8080

# -Xmx256m se RAM 256MB tak limit ho jayegi aur app crash nahi hogi
ENTRYPOINT ["java", "-Xmx256m", "-jar", "app.war"]