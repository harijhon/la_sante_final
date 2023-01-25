var signUp = document.querySelector(".modal__connection-display__signup");
var login = document.querySelector(".modal__connection-display__login");
var loginBtn = document.querySelector("#login");
var signUpBtn = document.querySelector("#signUp");
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