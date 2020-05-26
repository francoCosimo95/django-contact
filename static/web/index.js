const form = $('#contact-form');
const fieldset = form.children('fieldset');
const alert = $('#alert');

function setLoading(isLoading) {
    if (isLoading) {
        fieldset.attr('disabled', true);
    } else {
        fieldset.removeAttr('disabled');
    }
}

function showAlert(isVisible, isSuccess) {
    if (isVisible) {
        const message = isSuccess ? 'Email inviata con successo.' : '<b>Errore!</b> Impossibile inviare la mail. Riprova più tardi.';
        alert.html(message).attr('class', `alert alert-${isSuccess ? 'success' : 'danger'}`);
    } else {
        alert.attr('class', 'd-none');
    }
}

function sendEmail(data) {
    console.log("Send message", data);
    return new Promise((resolve, reject) => {
        $.ajax({
            type: 'POST',
            url: '/api/send-email',
            data,
            success: resolve,
            error: reject,
            dataType: 'application/json'
        });
    });
}

$("#contact-form").submit(async function (event) {
    event.preventDefault();
    setLoading(true);
    showAlert(false)
    const body = {
        csrfmiddlewaretoken: this.csrfmiddlewaretoken.value,
        name: this.name.value,
        email: this.email.value,
        subject: this.subject.value,
        message: this.message.value,
    }
    try {
        await sendEmail(body);
        showAlert(true, true);
        form[0].reset();
    } catch (e) {
        console.log(e);
        showAlert(true, false);
    }
    setLoading(false);
});
