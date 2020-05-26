# Django Contact
Before running the project you have to export the environmet variables follow:

- DJANGO_CONTACT_EMAIL_HOST: smtp endpoint (ex."smtp.gmail.com")
- DJANGO_CONTACT_EMAIL_HOST_USER: smtp email
- DJANGO_CONTACT_EMAIL_HOST_PASSWORD: smtp password
- DJANGO_CONTACT_EMAIL_PORT: smtp port (ex. 587)
- DJANGO_CONTACT_EMAIL_HOST_USER_TO: destination email

you can do it running the command follow:
```
$ . ./configure.sh
``` 
this command will ask and export the required environment variables to the current shell.

IMPORTANT: this variables will be exported only in the current shell, if you don't want to add them any time just export the variables in the `~/.bashrc` 

If you want to use your gmail account to send the mails from the development server remember to enable the access to less secure apps from:
https://myaccount.google.com/security?gar=1

##

Once configured you'll be ready to start the development server:
```
$ python3 manage.py runserver
```