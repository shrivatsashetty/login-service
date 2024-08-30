# Use the official OpenJDK 17 base image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host into the container
COPY target/login-service-0.0.1-SNAPSHOT.jar /app/login-service-0.0.1-SNAPSHOT.jar

# Expose the port on which the application will run
EXPOSE 8081

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/login-service-0.0.1-SNAPSHOT.jar"]
