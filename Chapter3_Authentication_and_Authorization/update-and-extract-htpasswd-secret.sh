#!/bin/bash

# Note: Before adding or removing users , the Admin need to extract the secret containing existing users before updatinmg the htpasswd secret file


oc extract secret/htpasswd-secret -n openshift-config --to /myfolder/  --conform /myfolder/htpasswd

#  By default, the oc extract command saves each key within a configuration map or secret as a
#  separate file. Alternatively, all data can then be redirected to a file or displayed as standard output.



## Update the HTPasswd Secret:
oc set data secret/htpasswd-secret --form-file htpasswd=/myfolder/htpasswd -n opensihift-config

##  The above  command updates the htpasswd-secret secret in the openshift-config
##      namespace using the content of the /myfolder/htpasswd file.

## To check the OAuth Operator redeploys pods:
watch oc get pods -n openshift-authentication