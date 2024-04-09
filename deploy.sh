#!/bin/bash
apictl mg login dev -u admin -p admin -k
# NOTE: Create a new environment called 'dev' in the API Controller before running this command

apictl mg deploy api -e dev -f wso2-cc-mtls-test/mtls-demo-api -k