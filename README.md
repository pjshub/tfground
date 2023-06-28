# tfground - PJ's terraform playground

Multiple Ways to Autheticate 
1. Using gcloud auth application default login on VS Code
2. Using Cloud Shell 
3. Using a service a/c - create an account, create key, download key, put in the same folder as ./main.tf. Export an environment variable or you can define a Terraform variable. 
    export GOOGLE_CLOUD_KEYFILE_JSON="$(pwd)/tf-samplekeyFile.json"
    cat `echo ${GOOGLE_CLOUD_KEYFILE_JSON}`
4. If credentials variable is configured in main.tf OR environment variable is set up at the prompt as in steps 8.3.1 - it would override pjoura@