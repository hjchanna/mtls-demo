# Use a base image with Java 22 installed
FROM openjdk:22

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container and rename it
COPY target/mtls-demo-0.0.1-SNAPSHOT.jar /app/mtls-demo.jar

# Run the JAR file with additional arguments
CMD ["java", "-jar", "-Djavax.net.debug=all","mtls-demo.jar", "--server.ssl.key-store-type=PKCS12", "--server.ssl.key-store=classpath:server.p12", "--server.port=8443"]

