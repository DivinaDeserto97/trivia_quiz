// delet session ---------------------------------------------------------------------------------------------------------

function deleteAllCookies() {
    alert('you start from the beginning');
    const cookies = document.cookie.split(";");

    for (let i = 0; i < cookies.length; i++) {
        const cookie = cookies[i];
        const eqPos = cookie.indexOf("=");
        const name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
        document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
    }
    window.location.href = "../index.php";
}
// FUNCTION DARK-MODE TOGGLE ---------------------------------------------------------------------------------------------
// sollHellDunkel = mustBrightDark
// so oder so ??? ln 247 ???

/* Change Bright to Dark */
function buttonChangeBrightDark(){
    let mustBrightDark = localStorage.getItem('mustBrightDark');
    if(mustBrightDark === 'Dark'){
        localStorage.setItem('mustBrightDark' , 'Bright');
    } else {
        localStorage.setItem('mustBrightDark' , 'Dark');
    }
  }
  function changeDark(){
    /* Pictures Bright off */
    document.getElementById('headerWrapperDay').style.display = 'none'; 
    /* Pictures Dark ein */
    document.getElementById('headerWrapperNight').style.display = 'inline-flex';
  }
  function changeBright(){
    /* Pictures Bright off */
    document.getElementById('headerWrapperDay').style.display = 'inline-flex'; 
    /* Pictures Dark on */
    document.getElementById('headerWrapperNight').style.display = 'none'; 
  }
  function changeBrightDark(){
    /* so oder so ??? */
    document.body.classList.toggle('bodyDark');
  
    let buttons = document.querySelectorAll('.btn-light');
  
    for (let b = 0; b < buttons.length; b++) {
        buttons[b].classList.toggle('btn-dark');
    }
    /* specific change */
    let isBrightDark = localStorage.getItem('isBrightDark');
    if(isBrightDark === 'Bright'){
        changeDark();
        localStorage.setItem('isBrightDark' , 'Dark');
    } else {
        changeBright();
        localStorage.setItem('isBrightDark' , 'Bright');
    }
  }
  function checkBrightDark(){
    let isBrightDark = localStorage.getItem('isBrightDark');
    let mustBrightDark = localStorage.getItem('mustBrightDark');
    if(!(isBrightDark === mustBrightDark)){
        changeBrightDark();
    }
  }
  var intervalChangeBrightDark;
  
  function startChangeBrightDark(){
    localStorage.setItem('isBrightDark' , 'Bright');
    let mustBrightDark = localStorage.getItem('mustBrightDark');
    if(!(mustBrightDark === 'Dark')){
        localStorage.setItem('mustBrightDark' , 'Bright');
    }
    intervalChangeBrightDark = setInterval(function(){checkBrightDark();} , 10);
  }
   // END BRIGHT-DARK-TOGGLE ------------------------------------------------------------------------------------------
  