#!/usr/bin/bash

oc create secret generic secret_name --from-literal key1=secret1 --from-literal key2=secret2


##  Create a generic secret using key names specified on the command line and values from files:
oc create secret generic ssh-keys \
    --from-file id_rsa=/path-to/id_rsa \
    --from-file id_rsa.pub=/path-to/id_rsa.pub


## Creating a TLS secret using certificate and associated Keys:
oc create secret tls secret-tls-name  --cert=/path-to-certificate --key=/path-to-key