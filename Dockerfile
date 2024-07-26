# Use an official OpenJDK runtime as a parent image
FROM openjdk:21-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY build/libs/my-jar-files.jar /app/my-jar-files.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "my-jar-files.jar"]
