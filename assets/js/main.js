//ajax запит на відправку даних з форми контакти
jQuery(document).ready(function($){
    var form = $('#contactForm');
    var action = form.attr('action');

    form.on('submit', function(event){
        var formData = {
            contactName: $('#contactName').val(),
            contactEmail: $('#contactEmail').val(),
            contactSubject: $('#contactSubject').val(),
            contactMessage: $('#contactMessage').val()
        };
        $.ajax({
//            береться посилання з форми контакти в action
            url: action,
            type: 'POST',
//            передаються дані з форми
            data: formData,
            error: function(request, txtstatus, errorThrown){
                consol.log(request);
                consol.log(txtstatus);
                consol.log(errorThrown);
            },
            success: function(){
                form.html('Ваш запит відправлено')
            }
        });
//        скидаються налаштування форми
        event.preventDefault();
    });
});
