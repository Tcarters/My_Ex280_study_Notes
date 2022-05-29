oc adm new-project demo-project --node-selector "tier=1"

#  Above cmd creates a new project named demo-project , where
#  all pods will be deployed to nodes that have the label of tier=1.


oc annotate namespace demo-project openshift.io/node-selector="tier=2" --overwrite

#   To configure a default node selector for an existing project, Use an annotation to the namespace
#   resource with the openshift.io/node-selector key


 oc scale --replicas 3 deployment/myapp
 # To scale manually a deployment 