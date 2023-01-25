package santePackage;

import java.sql.*;
import java.time.LocalDate;

import connection.*;
import exception.*;

public class Utilisateur {
    int id_utilisateur;
    String nom_utilisateur;
    String prenom;
    int id_genre;
    LocalDate date_naissance;
    String mail;
    String mdp;
    int id_typeUtilisateur;
    int etat;

    public Utilisateur() {
    }

    public Utilisateur(String mail, String mdp) {
        this.setMail(mail);
        this.setMdp(mdp);
    }

    public Utilisateur(String nom_utilisateur, String prenom, int id_genre,
            LocalDate date_naissance, String mail, String mdp, int etat) throws Exception {
        // Utilisateur(String, String, int, LocalDate, String, String, int, int)
        this.nom_utilisateur = nom_utilisateur;
        this.prenom = prenom;
        this.id_genre = id_genre;
        setDate_naissance(date_naissance);
        this.mail = mail;
        this.mdp = mdp;
        // this.id_typeUtilisateur = id_typeUtilisateur;
        this.etat = etat;
    }

    public Utilisateur(int id_utilisateur, String nom_utilisateur, String prenom, int id_genre,
            LocalDate date_naissance, String mail, String mdp, int id_typeUtilisateur, int etat) throws Exception {
        this.id_utilisateur = id_utilisateur;
        this.nom_utilisateur = nom_utilisateur;
        this.prenom = prenom;
        this.id_genre = id_genre;
        setDate_naissance(date_naissance);
        this.mail = mail;
        this.mdp = mdp;
        this.id_typeUtilisateur = id_typeUtilisateur;
        this.etat = etat;
    }

    // inscription utilisateur
    public int inscriptionUtilisateur() throws Exception {
        String query = "insert into utilisateur(nom_utilisateur,prenom,id_genre,date_naissance,mail,mdp,id_typeUtilisateur,etat) values ('"
                + this.getNom_utilisateur() + "', '" + this.getPrenom()
                + "'," + this.getId_genre() + ",'" + this.getDate_naissance()
                + "','" + this.getMail() + "','" + this.getMdp() + "',2,"
                + this.getEtat() + ")";
        Connection connect = null;
        Statement stmt = null;
        System.out.println(query);
        int userInseree = 0;
        try {
            connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
            stmt = connect.createStatement();
            userInseree = stmt.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            connect.close();
            stmt.close();
        }
        return userInseree;
    }

    public Utilisateur loginUtilisateur() throws Exception {
        String query = "select  * from utilisateur where mail = '" + this.getMail() + "' and mdp = '"
                + this.getMdp() + "'";
        Connection connect = null;
        Statement stmt = null;
        System.out.println(query);
        Utilisateur user = new Utilisateur();
        try {
            connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
            stmt = connect.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if (rs.next()) {
                user = new Utilisateur(rs.getInt("id_utilisateur"), rs.getString("nom_utilisateur"),
                        rs.getString("prenom"),
                        rs.getInt("id_genre"),
                        rs.getDate("date_naissance").toLocalDate(),
                        rs.getString("mail"), rs.getString("mdp"), rs.getInt("id_typeUtilisateur"), rs.getInt("etat"));
                System.out.println(rs.getInt("id_utilisateur"));
            } else {
                throw new LoginException();
            }
        } catch (Exception e) {
            e.printStackTrace();
            // e.getMessage();
            // System.err.println(e.getMessage());
        } finally {
            connect.close();
            stmt.close();
        }
        return user;
    }

    public int getId_utilisateur() {
        return id_utilisateur;
    }

    public void setId_utilisateur(int id_utilisateur) {
        this.id_utilisateur = id_utilisateur;
    }

    public String getNom_utilisateur() {
        return nom_utilisateur;
    }

    public void setNom_utilisateur(String nom_utilisateur) {
        this.nom_utilisateur = nom_utilisateur;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public int getId_genre() {
        return id_genre;
    }

    public void setId_genre(int id_genre) {
        this.id_genre = id_genre;
    }

    public LocalDate getDate_naissance() {
        return date_naissance;
    }

    public void setDate_naissance(LocalDate date_naissance) throws Exception {
        int age = 18;
        LocalDate dt = LocalDate.now().minusYears(age);
        // System.out.println(dt);
        if (date_naissance.isAfter(dt)) {
            throw new AgeException();
        }

        // System.out.println(dt.compareTo(date_naissance));
        this.date_naissance = date_naissance;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getMdp() {
        return mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public int getId_typeUtilisateur() {
        return id_typeUtilisateur;
    }

    public void setId_typeUtilisateur(int id_typeUtilisateur) {
        this.id_typeUtilisateur = id_typeUtilisateur;
    }

    public int getEtat() {
        return etat;
    }

    public void setEtat(int etat) {
        this.etat = etat;
    }
}
