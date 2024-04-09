#!/bin/bash

# Clean and install Maven project
mvn clean install

# Build Docker image
docker build -t mtls-demo .