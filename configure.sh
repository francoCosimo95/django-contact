#! /bin/bash
echo -n "- DJANGO_CONTACT_EMAIL_HOST Insert smtp endpoin (ex.\"smtp.gmail.com\"):"
read host
export DJANGO_CONTACT_EMAIL_HOST="$host"

echo -n "- DJANGO_CONTACT_EMAIL_HOST_USER Insert smtp email:"
read DJANGO_CONTACT_EMAIL_HOST_USER
export DJANGO_CONTACT_EMAIL_HOST_USER="$DJANGO_CONTACT_EMAIL_HOST_USER"

echo -n "- DJANGO_CONTACT_EMAIL_HOST_PASSWORD Insert smtp password:"
read -s DJANGO_CONTACT_EMAIL_HOST_PASSWORD
export DJANGO_CONTACT_EMAIL_HOST_PASSWORD="$DJANGO_CONTACT_EMAIL_HOST_PASSWORD"
echo
echo -n "- DJANGO_CONTACT_EMAIL_PORT Insert smtp port (ex. 587):"
read DJANGO_CONTACT_EMAIL_PORT
export DJANGO_CONTACT_EMAIL_PORT="$DJANGO_CONTACT_EMAIL_PORT"

echo -n "- DJANGO_CONTACT_EMAIL_HOST_USER_TO Insert destination email:"
read DJANGO_CONTACT_EMAIL_HOST_USER_TO
export DJANGO_CONTACT_EMAIL_HOST_USER_TO="$DJANGO_CONTACT_EMAIL_HOST_USER_TO"

echo "Operation completed! Run the development server:"
echo "$ python3 manage.py runserver"