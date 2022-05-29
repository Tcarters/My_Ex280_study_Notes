## SCALE DEPLOYMENT MANUALLY

# First Get deployment name
oc get deployment

# USe oc scale command
oc scale --replicas 5 deployment/mydeploy-name

# Above command will scale the current pod in deployemnt to a number 0f 5

# ---
## AUTOSCSLE DEPLOYMENT

oc autoscale deployment/mydeploy-name --min 1 --max 10 --cpu-percent 90

# The above cmd will  creates a horizontal pod autoscaler resource that changes the number of
# replicas on the mydeploy-name deployment to keep its pods under 90% of their total requested CPU usage.


# ---
## GET ACTUAL AUTOSCALER INFO
oc get hpa
