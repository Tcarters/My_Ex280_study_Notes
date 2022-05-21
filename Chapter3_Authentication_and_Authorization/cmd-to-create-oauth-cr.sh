#!/bin/bash

oc get oauth cluster -o yaml > oauth.yaml  

##Abovae command will generate an oauth configuration yaml file

oc replace -f oauth.yaml ## => To apply new custom resource using the `oc replace command`