# Use an official OpenJDK 21 image as a base
FROM openjdk:21-jdk-slim

# Set the working directory in the container
WORKDIR /teamspace/studios/this_studio/Twitter-API

# Copy the application JAR file to the container
COPY target/twitterapi.jar app.jar

# Expose the port your Spring Boot application will run on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
