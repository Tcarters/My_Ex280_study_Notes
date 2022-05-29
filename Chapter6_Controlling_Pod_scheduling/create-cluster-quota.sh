
# This create a cluster resource quota for all projects  owned by user1-qa

oc create clusterquota user1-qa \
    --project-annotation-selector openshift.io/requester=qa \
    --hard pods=12,secrets=20

# This creates a cluster resource quota for all projects that have been assigned the env=qa label:
oc create clusterquota env-qa \
    --project-label-selector env=qa
    --hard pods=10,services=5