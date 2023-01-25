
package santePackage;

import java.sql.*;
import java.util.Random;
import java.util.Vector;
import connection.*;

public class Produit {

    int id_produit;
    int id_medicament;
    Medicament medicament;
    String contenance;
    double prix_unitaire;

    public int getId_produit() {
        return this.id_produit;
    }

    public void setId_produit(int id_produit) {
        this.id_produit = id_produit;
    }

    public int getId_medicament() {
        return id_medicament;
    }

    public void setId_medicament(int id_medicament) {
        this.id_medicament = id_medicament;
    }

    public Medicament getMedicament() {
        return this.medicament;
    }

    public void setMedicament(Medicament medicament) {
        this.medicament = medicament;
    }

    public String getContenance() {
        return this.contenance;
    }

    public void setContenance(String contenance) {
        this.contenance = contenance;
    }

    public double getPrix_unitaire() {
        return this.prix_unitaire;
    }

    public void setPrix_unitaire(double prix_unitaire) {
        this.prix_unitaire = prix_unitaire;
    }

    public Produit(int id_produit, Medicament medicament, String contenance, double prix_unitaire) {
        setId_produit(id_produit);
        setMedicament(medicament);
        setContenance(contenance);
        setPrix_unitaire(prix_unitaire);
    }

    public Produit(Medicament medicament, String contenance, double prix_unitaire) {
        setMedicament(medicament);
        setContenance(contenance);
        setPrix_unitaire(prix_unitaire);
    }

    public Produit() {
    }

    public Produit(int id_medicament) {
        setId_medicament(id_medicament);
    }

    // filtre par prix produit

    // public static Produit[] getProduitByprix(Produit[] data, double prix_min,
    // double prix_max) {
    // Medicament[] ret = null;
    // Vector v = new Vector<>();
    // for (Medicament each : data) {
    // if (each.getMarque().getId() == id) {
    // v.add(each);
    // }
    // }
    // ret = new Medicament[v.size()];
    // v.copyInto(ret);
    // return ret;
    // }

    // filtre par prix produit

    public Produit[] getProduitByprix(double prix_min, double prix_max) throws Exception {
        Connection connect = null;
        Statement stmt = null;
        String sql = "select * from product_data WHERE prix_unitaire BETWEEN '" + prix_min + "' AND '" + prix_max + "'";
        Produit[] prod = null;
        Vector<Produit> listProduit = new Vector<>();
        try {
            connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
            stmt = connect.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                int id_produit = rs.getInt("id_produit");
                String contenance = rs.getString("contenance");
                double prix_unitaire = rs.getDouble("prix_unitaire");
                Medicament medcs = new Medicament(rs.getString("nom_medicament"),
                        rs.getString("dose"), rs.getString("lien_img"),
                        rs.getBoolean("need_ordonnance"),
                        new Marque(rs.getString("nom_marque")),
                        new Forme(rs.getString("nom_forme")),
                        new ModeAdministration(rs.getString("nom_admin")),
                        new Age(rs.getString("age")),
                        rs.getBoolean("pour_allaitement"), rs.getString("notice"), rs.getBoolean("pour_enceinte"));

                listProduit.add(new Produit(id_produit, medcs, contenance, prix_unitaire));
            }
            prod = new Produit[listProduit.size()];
            listProduit.copyInto(prod);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            connect.close();
            stmt.close();
        }
        return prod;
    }

    // select all produit
    public Produit[] selectProduit() throws Exception {
        Connection connect = null;
        Statement stmt = null;
        String sql = "select * from product_data";
        Produit[] prod = null;
        Vector<Produit> listProduit = new Vector<>();
        try {
            connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
            stmt = connect.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                int id_produit = rs.getInt("id_produit");
                String contenance = rs.getString("contenance");
                double prix_unitaire = rs.getDouble("prix_unitaire");
                Medicament medcs = new Medicament(rs.getString("nom_medicament"),
                        rs.getString("dose"), rs.getString("lien_img"),
                        rs.getBoolean("need_ordonnance"),
                        new Marque(rs.getString("nom_marque")),
                        new Forme(rs.getString("nom_forme")),
                        new ModeAdministration(rs.getString("nom_admin")),
                        new Age(rs.getString("age")),
                        rs.getBoolean("pour_allaitement"), rs.getString("notice"), rs.getBoolean("pour_enceinte"));

                listProduit.add(new Produit(id_produit, medcs, contenance, prix_unitaire));
            }
            prod = new Produit[listProduit.size()];
            listProduit.copyInto(prod);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            connect.close();
            stmt.close();
        }
        return prod;
    }

    public Produit[] randomProduit(Produit[] produit) {
        Random rand = new Random();
        for (int i = produit.length - 1; i > 0; i--) {
            int j = rand.nextInt(i + 1);
            Produit temp = produit[j];
            produit[j] = produit[i];
            produit[i] = temp;
        }
        return produit;
    }

    public Produit[] ficheProduitImage(String image) throws Exception {
        Connection c = ConnectToDB.getConnection("Postgres", "postgres", "root");
        Statement stmt = c.createStatement();
        String query = "SELECT * FROM product_data where lien_img='" + image + "' ";
        ResultSet rs = stmt.executeQuery(query);
        Vector<Produit> v = new Vector<Produit>();
        while (rs.next()) {
            int id_produit = rs.getInt("id_produit");
            String contenance = rs.getString("contenance");
            double prix_unitaire = rs.getDouble("prix_unitaire");
            Medicament medcs = new Medicament(rs.getString("nom_medicament"),
                    rs.getString("dose"), rs.getString("lien_img"),
                    rs.getBoolean("need_ordonnance"),
                    new Marque(rs.getString("nom_marque")),
                    new Forme(rs.getString("nom_forme")),
                    new ModeAdministration(rs.getString("nom_admin")),
                    new Age(rs.getString("age")),
                    rs.getBoolean("pour_allaitement"), rs.getString("notice"), rs.getBoolean("pour_enceinte"));

            v.add(new Produit(id_produit, medcs, contenance, prix_unitaire));
        }

        Produit[] ficheProduit = new Produit[v.size()];
        v.copyInto(ficheProduit);

        stmt.close();
        c.close();
        return ficheProduit;
    }

    public Produit[] ficheProduitId(int id) throws Exception {
        Connection c = ConnectToDB.getConnection("Postgres", "postgres", "root");
        Statement stmt = c.createStatement();
        String query = "SELECT * FROM product_data where id_produit='" + id + "' ";
        ResultSet rs = stmt.executeQuery(query);
        Vector<Produit> v = new Vector<Produit>();
        while (rs.next()) {
            int id_produit = rs.getInt("id_produit");
            String contenance = rs.getString("contenance");
            double prix_unitaire = rs.getDouble("prix_unitaire");
            Medicament medcs = new Medicament(rs.getString("nom_medicament"),
                    rs.getString("dose"), rs.getString("lien_img"),
                    rs.getBoolean("need_ordonnance"),
                    new Marque(rs.getString("nom_marque")),
                    new Forme(rs.getString("nom_forme")),
                    new ModeAdministration(rs.getString("nom_admin")),
                    new Age(rs.getString("age")),
                    rs.getBoolean("pour_allaitement"), rs.getString("notice"), rs.getBoolean("pour_enceinte"));

            v.add(new Produit(id_produit, medcs, contenance, prix_unitaire));
        }

        Produit[] ficheProduit = new Produit[v.size()];
        v.copyInto(ficheProduit);

        stmt.close();
        c.close();
        return ficheProduit;
    }
}
