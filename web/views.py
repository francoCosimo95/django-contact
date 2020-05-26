import os
from django.shortcuts import render


def index(request):
    email_to = os.environ['EMAIL_HOST_USER_TO']
    return render(request, 'web/index.html', {'email_to': email_to})
