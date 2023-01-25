package exception;

public class AgeException extends Exception {

    public AgeException() {
        this("vous êtes inférieur à 18 ans");
    }

    public AgeException(String message) {
        super(message);
    }

}
