#!/bin/bash

apictl mg login dev -u admin -p admin -k

apictl mg deploy api -e dev -f wso2-cc-mtls-test/mtls-demo-api -k