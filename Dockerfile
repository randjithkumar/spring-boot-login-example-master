# Use OpenJDK image
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy the jar file
COPY target/spring-boot-login-example-0.0.1-SNAPSHOT.jar app.jar

# Expose port (change if your app uses a different port)
EXPOSE 8082 # application port to expose
EXPOSE 3306 # mysql port to expose

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
