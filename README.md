### Important dirs
```
# server keystore and truststore
src/main/resources/server.p12
src/main/resources/server-truststore.p12

# cc configs
wso2-cc-mtls-test/choreo-connect/conf/config.toml

# cc certificates
wso2-cc-mtls-test/resources/router/security/keystore/mg.key
wso2-cc-mtls-test/resources/router/security/keystore/mg.pem
wso2-cc-mtls-test/resources/router/security/truststore/mg.pem
wso2-cc-mtls-test/resources/router/security/ca-certificates.crt
```

### Testing with Choreo connect
```
# step 01: building
./build.sh

# step 02: starting choreo connet
docker-compose -f wso2-cc-mtls-test/choreo-connect/docker-compose.yaml up

# step 03: deploying api
./deploy.sh

# step 04: testing
./test.sh
```

### Build and Testing test backend service individually 
```
# building the project
mvn clean install

# starting the server 
java -jar target/mtls-demo-0.0.1-SNAPSHOT.jar --server.ssl.key-store-type=PKCS12 --server.ssl.key-store=classpath:server.p12 --server.port=8443

# testing
# NOTE 'server-truststore.p12.original' trusts the client.p12. Currently server-truststore.p12 has wso2 certificates.
mv client
curl -k -v --cert-type P12 --cert client.p12:changeit https://localhost:8443/hello
```

### Docker build and run
```
# build docker
docker build -t mtls-demo .

# run docker file
docker run -p 8443:8443 mtls-demo
```