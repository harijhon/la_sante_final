import java.time.*;

import santePackage.*;

public class App {
    public static void main(String[] args) throws Exception {
        Produit[] testProduit = Produit.selectProduit();
        for (Produit produit : testProduit) {
            System.out.println(produit.getId_produit());
        }

        // Utilisateur user = new Utilisateur("johndoe@gmail.com", "1234");
        // Utilisateur us = user.loginUtilisateur();

        // System.out.println(us.getNom_utilisateur());
        // System.out.println(us.getNom_utilisateur());
    }
}
