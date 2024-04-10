#!/bin/bash
apictl mg login dev -u admin -p admin -k
# NOTE: Create a new environment called 'dev' in the API Controller before running this command
# apictl mg add-env -e dev --apim https://localhost:9443 --token https://localhost:8243/token -k

apictl mg undeploy api --environment dev -n mtls-demo-api -v 1.0.0 -k

apictl mg deploy api -e dev -f wso2-cc-mtls-test/mtls-demo-api -k