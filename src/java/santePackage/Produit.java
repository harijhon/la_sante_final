
package santePackage;

import java.sql.*;
import java.util.Vector;
import connection.*;

public class Produit {

    int id_produit;
    Medicament medicament;
    int quantite_medicament;
    double prix_unitaire;

    public int getId_produit() {
        return this.id_produit;
    }

    public void setId_produit(int id_produit) {
        this.id_produit = id_produit;
    }

    public Medicament getMedicament() {
        return this.medicament;
    }

    public void setMedicament(Medicament medicament) {
        this.medicament = medicament;
    }

    public int getQuantite_medicament() {
        return this.quantite_medicament;
    }

    public void setQuantite_medicament(int quantite_medicament) {
        this.quantite_medicament = quantite_medicament;
    }

    public double getPrix_unitaire() {
        return this.prix_unitaire;
    }

    public void setPrix_unitaire(double prix_unitaire) {
        this.prix_unitaire = prix_unitaire;
    }

    public Produit(int id_produit, Medicament medicament, int quantite_medicament, double prix_unitaire) {
        setId_produit(id_produit);
        setMedicament(medicament);
        setQuantite_medicament(quantite_medicament);
        setPrix_unitaire(prix_unitaire);
    }

    public Produit(Medicament medicament, int quantite_medicament, double prix_unitaire) {
        setMedicament(medicament);
        setQuantite_medicament(quantite_medicament);
        setPrix_unitaire(prix_unitaire);
    }

    public Produit() {
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
                int quantite_medicament = rs.getInt("quantite_medicament");
                double prix_unitaire = rs.getDouble("prix_unitaire");
                Medicament medcs = new Medicament(rs.getString("nom_medicament"),
                        new Marque(rs.getString("nom_marque")),
                        new Forme(rs.getString("nom_forme")),
                        new ModeAdministration(rs.getString("nom_admin")),
                        new Allaitement(rs.getBoolean("pour_allaitement")), rs.getString("notice"));

                listProduit.add(new Produit(medcs, quantite_medicament, prix_unitaire));
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
                int quantite_medicament = rs.getInt("quantite_medicament");
                double prix_unitaire = rs.getDouble("prix_unitaire");
                Medicament medcs = new Medicament(rs.getString("nom_medicament"),
                        new Marque(rs.getString("nom_marque")),
                        new Forme(rs.getString("nom_forme")),
                        new ModeAdministration(rs.getString("nom_admin")),
                        new Allaitement(rs.getBoolean("pour_allaitement")), rs.getString("notice"));

                listProduit.add(new Produit(medcs, quantite_medicament, prix_unitaire));
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
}
