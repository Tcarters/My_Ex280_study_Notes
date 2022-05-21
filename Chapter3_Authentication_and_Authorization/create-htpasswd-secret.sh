#!/bin/bash

oc create secret generic htpasswd-secret \
--from-file htpasswd=/myfolder/htpasswd -n openshift-config


## Important: A secret used by the HTPasswd identity provider requires adding the htpasswd=
#                prefix before specifying the path to the file.


