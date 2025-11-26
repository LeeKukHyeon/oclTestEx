```dockerfile
# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Resolve dependencies and compile the application
RUN ./gradlew build -x test

# Expose the port the app runs on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "build/libs/your-app-name.jar"]
```

Make sure to replace `"your-app-name.jar"` with the actual name of your JAR file. Adjust the build command if you are using Maven or another build tool.