
// POPUP COMPTE
var myAccount = document.getElementById("monCompte");
// console.log(myAccount);
// myAccount.onclick = ()=>{
    // }
var popup = document.getElementById("popup");
var close = document.getElementById("close_popup");
    
myAccount.addEventListener('click', () => {
        popup.classList.add("show-popup")    
        console.log("link clicked");
});

close.addEventListener('click', () => {
    popup.classList.remove("show-popup");
});

var signUp = document.querySelector(".inscription__popup");
var login = document.querySelector(".login__popup");
var loginBtn = document.querySelector("#login__nosMedicament");
var signUpBtn = document.querySelector("#signUp__nosMedicament");
loginBtn.addEventListener("click", () => {
//     // signUp.classList.add("hidden");
//     // login.classList.add("visible");
    signUp.style.display = 'none';
    login.style.display = 'flex';
});

signUpBtn.addEventListener("click", () => {
    login.style.display = 'none';
    signUp.style.display = 'flex';

});
