document.addEventListener('turbo:load', function() {
    var control = document.querySelectorAll('new_user')

    if (control) { 
      control.addEventListener('input', checkPass) 
    }
  })

function checkPass() {
    var passConfirm = document.getElementById('user_password_confirmation')
    var pass = document.getElementById('user_password')
    var passSuccess = document.querySelector('.check-circle')
    var passFailed = document.querySelector('.circle-slash')
    
    if (pass.value === passConfirm.value){
        passSuccess.classList.remove('hide')
        passFailed.classList.add('hide')
    }
    else {
      passSuccess.classList.add('hide')
      passFailed.classList.remove('hide')
        
    }
}
    