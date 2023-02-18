# Use an official Java runtime as a parent image
FROM openjdk:17-slim AS builder

# Set the working directory to /app
WORKDIR /app

# Copy the Maven project files into the container
COPY  . .

# Run Maven to build the project
RUN ./mvnw package

FROM  openjdk:17-slim
# Expose the port that the application will run on
WORKDIR /app
COPY --from=builder /app/target/*.jar .

# Set the command to run the application when the container starts
CMD ["java", "-jar", "spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar"]
