package exception;

public class LoginException extends Exception {

    public LoginException() {
        this("connection invalide verifer votre adresse ou mot de passe");
    }

    public LoginException(String message) {
        super(message);
    }

}
