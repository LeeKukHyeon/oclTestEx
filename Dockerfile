```Dockerfile
# Use the official OpenJDK image as the base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Compile the Java application
RUN ./gradlew build

# Run the application
CMD ["java", "-jar", "build/libs/your-app.jar"]
```

Make sure to replace `your-app.jar` with the actual name of your JAR file. If you are using Maven instead of Gradle, you will need to adjust the build command and paths accordingly.