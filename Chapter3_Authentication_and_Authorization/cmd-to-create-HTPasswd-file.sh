#!/bin/bash

#Note: The httpd-utils package provides the htpasswd utility. The httpd-utils package must be
#         installed and available on your system.



## TO create the htpasswd file use:
htpasswd -c -b -B /myfolder/htpasswd username1 password1 # 1


#1 Explaination: This will create a new file called `htpasswd` in the folder `myfolder` containing
#               containing the user: `username1 and its password` in a hashed value       



##Important: Use the -c option only when creating a new file. The -c option replaces all file
#            content if the file already exists.


#To add or Update credentials
htpasswd -b /myfolder/htpasswd username2 password2  # 2

#2 => This will update the existing file `htpasswd` with new user: username2 and it's password.


# To delete credentials:  
htpasswd -D /myfolder/htpasswd username1