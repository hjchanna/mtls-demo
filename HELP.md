# Read Me First
The following was discovered as part of building this project:

* The original package name 'me.channa.test.mtls-demo' is invalid and this project uses 'me.channa.test.mtlsdemo' instead.

# Getting Started

### Reference Documentation
For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/3.3.0-M3/maven-plugin/reference/html/)
* [Create an OCI image](https://docs.spring.io/spring-boot/docs/3.3.0-M3/maven-plugin/reference/html/#build-image)
* [Spring Reactive Web](https://docs.spring.io/spring-boot/docs/3.3.0-M3/reference/htmlsingle/index.html#web.reactive)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a Reactive RESTful Web Service](https://spring.io/guides/gs/reactive-rest-service/)

### Build and Testing
```
# building the project
mvn clean install

# starting the server 
java -jar target/mtls-demo-0.0.1-SNAPSHOT.jar --server.ssl.key-store-type=PKCS12 --server.ssl.key-store=classpath:server.p12 --server.port=8443

# testing
mv client
curl -k -v --cert-type P12 --cert client.p12:changeit https://localhost:8443/hello
```

### References
This code is based on the article [here](https://medium.com/ing-tech-romania/a-simple-mtls-guide-for-spring-boot-microservices-c6bfc9878369)