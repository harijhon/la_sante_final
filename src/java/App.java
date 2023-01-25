import java.time.*;

import santePackage.*;

public class App {
    public static void main(String[] args) throws Exception {
        LocalDate date_naissance = LocalDate.parse("2003-01-09");

        Utilisateur us = new Utilisateur("feno", "faly", 1, date_naissance,
                "fff@gmail.com", "1234", 0);

        System.out.println(us.inscriptionUtilisateur());

        // Utilisateur user = new Utilisateur("johndoe@gmail.com", "1234");
        // Utilisateur us = user.loginUtilisateur();

        // System.out.println(us.getNom_utilisateur());
        // System.out.println(us.getNom_utilisateur());
    }
}
