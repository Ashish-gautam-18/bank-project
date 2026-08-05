FROM maven:3.8.5-openjdk-17
COPY . .
EXPOSE 1234
ENTRYPOINT ["mvn", "spring-boot:run"]
