#!/bin/bash

# To add a volume to an application, use the oc set volumes command:

 oc set volumes deployment/example-application \
>
 --add --name example-storage --type pvc --claim-class nfs-storage \
>
 --claim-mode rwo --claim-size 15Gi --mount-path /var/lib/example-app \
>
 --claim-name example-storage



#----------------------------------------------
#To delete a volume, use the oc delete command to delete the persistent volume claim.

oc delete pvc/example-pvc-storage