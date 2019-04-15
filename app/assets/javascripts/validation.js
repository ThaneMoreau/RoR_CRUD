$(document).ready(function () {
    $('#user_first_name, #user_last_name, #user_phone, #user_email' )
    .on('keyup blur', function(){
        if(check_name('#user_first_name') &&
           check_name('#user_last_name') &&
           check_email('#user_email') &&
           check_number('#user_phone')){
              $('#add_button').prop('disabled', false);
           }
           else {
               $('#add_button').prop('disabled', true);
           }
    });


    function check_name(name){
        regex = /^[a-z]+$/i;
        if($(name).val().match(regex)){
            $('#valid_'+name.slice(1)).empty();
            return true;
        }
        $('#valid_'+name.slice(1))
        .text('The filed must contain only letters');
        return false;
    };
    
    function check_number(number){
        if($(number).val().replace(/[^0-9]/g, '').length == 11){
            $('#valid_' + number.slice(1)).text('');
            return true
        }
        $('#valid_' + number.slice(1))
        .text('The field must contain eleven-digit number');
        return false
    };
    
    function check_email(email){
        regex = /^[\w+\-.]+@[a-z\d\-.]+\.[a-z]+$/i;
        if($(email).val().match(regex)){
            $('#valid_' + email.slice(1)).text('');
            return true;
        }
        $('#valid_' + email.slice(1))
        .text('The field must contain email');
        return false
    };
    
});
