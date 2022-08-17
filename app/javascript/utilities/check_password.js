document.addEventListener('turbo:load', function() {
    var control = document.querySelector('.pass-confirm')

    if (control) { 
      control.addEventListener('input', checkPass) 
    }
  })

function checkPass() {
    var passConfirm = document.getElementById('user_password_confirmation')
    var pass = document.getElementById('user_password')
    
    if (pass.value === passConfirm.value){
        this.querySelector('.octicon-check-circle-fill').classList.remove('.hide')
        this.querySelector('.octicon-x-circle-fill').classList.add('.hide')
    }
    else {
        this.querySelector('.octicon-x-circle-fill').classList.remove('.hide')
        this.querySelector('.octicon-check-circle-fill').classList.add('.hide')
        
    }
}
    