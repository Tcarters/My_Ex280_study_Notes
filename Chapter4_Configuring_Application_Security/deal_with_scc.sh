# To get the security context constraints of a pod
oc get pod podname -o yaml | oc adm policy scc-subject-review -f -


## To change the container to run using a different SCC, you must create a service account bound to
#  a pod
oc create serviceaccount service-account-name  #-> create a service account in actual prroject

 oc adm policy add-scc-to-user SCC -z service-account  # => To associate the service account with an SCC


oc set serviceaccount deployment/deployment-name service-account-name
# The above cmd modify an existing deployment to use the new service account


