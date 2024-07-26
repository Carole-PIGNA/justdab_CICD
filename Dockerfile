# Use an official OpenJDK runtime as a parent image
FROM openjdk:21-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY build/libs/my-jar-app.jar /app/my-jar-app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "my-jar-app.jar"]
