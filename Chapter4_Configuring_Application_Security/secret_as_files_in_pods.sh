

oc  set volume deployment/deploy-name  \ #1
    --add --type secret  #2 \
    --secret-name mysecret-name \ #3
    --mount-path /app-secrets #4



###
    # 1  Modify the volume configuration in the deploy-name
    # 2 Add a new volumet from a secret
    # 3 Use the secret `mysecret-name`
    # 4  Make the secret data availble in the folder /app-secrets in the pod
    