openssl x509 req \ 
    -in training.csr \
    -CA training-CA.pem \
    -CAkey training-CA.key
    -CAcreateserial  \
    -passin file:passphrase.txt \
    - days 365 -sha256 \
    -extfile: training.ext \
    -out training.crt


# The above cmd generates a signed certificate for the crs key training.csr
##  Notice the use of the -CA and -CAkey options for signing the certificate against the CA. 
#  The -passin option allows you to reuse the password of the CA. 
#  The extfile option allows you to define a Subject Alternative Name (SAN).



## Use these keys to create a tls secret
oc create secret tls seret-name --cert training.crt --key training.key