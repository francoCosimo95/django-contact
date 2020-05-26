import os
from django.core.mail import BadHeaderError, send_mail
from django.http import HttpResponse, HttpResponseRedirect


def send_email(request):
    name = request.POST.get('name', '')
    subject = 'Django Contact | ' + request.POST.get('subject', '')
    message = request.POST.get('message', '')
    from_email = request.POST.get('email', '')
    final_message = 'You have a new message sent using Django Contact:\n\n' + \
                    'From: ' + name + '\n' + \
                    'Email: ' + from_email + '\n' + \
                    'Message: ' + message
    if subject and message and from_email:
        try:
            send_mail(subject, final_message, os.environ["DJANGO_CONTACT_EMAIL_HOST_USER"], [os.environ["DJANGO_CONTACT_EMAIL_HOST_USER_TO"]])
            return HttpResponse(status=204)
        except BadHeaderError:
            return HttpResponse('Invalid header found.')
    else:
        return HttpResponse('Make sure all fields are entered and valid.')