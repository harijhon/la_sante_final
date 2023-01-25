/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package santePackage;

import java.sql.*;
import java.util.Vector;
import connection.*;

public class Medicament {
    int idMedicament;

    String nomMedicament;
    Marque marque;
    Forme forme;
    Allaitement isAllaitement;
    Age typeAge;
    ModeAdministration modeAdministration;
    String description;

    public int getIdMedicament() {
        return idMedicament;
    }

    public void setIdMedicament(int idMedicament) {
        this.idMedicament = idMedicament;
    }

    public Medicament() {
    }

    public String getNomMedicament() {
        return this.nomMedicament;
    }

    public void setNomMedicament(String nomMedicament) {
        this.nomMedicament = nomMedicament;
    }

    public Marque getMarque() {
        return this.marque;
    }

    public void setMarque(Marque marque) {
        this.marque = marque;
    }

    public Forme getForme() {
        return this.forme;
    }

    public void setForme(Forme forme) {
        this.forme = forme;
    }

    public Allaitement getIsAllaitement() {
        return this.isAllaitement;
    }

    public void setIsAllaitement(Allaitement isAllaitement) {
        this.isAllaitement = isAllaitement;
    }

    public Age getTypeAge() {
        return this.typeAge;
    }

    public void setTypeAge(Age typeAge) {
        this.typeAge = typeAge;
    }

    public ModeAdministration getModeAdministration() {
        return this.modeAdministration;
    }

    public void setModeAdministration(ModeAdministration modeAdministration) {
        this.modeAdministration = modeAdministration;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Medicament(String nomMedicament, Marque marque, Forme forme, 
            ModeAdministration modeAdministration, Allaitement isAllaitement, String description) {
        this.nomMedicament = nomMedicament;
        this.marque = marque;
        this.forme = forme;
        this.isAllaitement = isAllaitement;
        this.modeAdministration = modeAdministration;
        this.description = description;
    }

    public Medicament(int id, String nomMedicament, Marque marque, Forme forme, Age typeAge,
            ModeAdministration modeAdministration, Allaitement isAllaitement, String description) {
        this.setIdMedicament(id);
        this.nomMedicament = nomMedicament;
        this.marque = marque;
        this.forme = forme;
        this.isAllaitement = isAllaitement;
        this.typeAge = typeAge;
        this.modeAdministration = modeAdministration;
        this.description = description;
    }

//     public Medicament[] selectMedicament() throws Exception {
//         Connection connect = null;
//         Statement stmt = null;
//         String sql = "select * from vue_medicament";
//         Medicament[] medcs = null;
//         Vector<Medicament> listMedicament = new Vector<>();
//         try {
//             connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
//             stmt = connect.createStatement();
//             ResultSet rs = stmt.executeQuery(sql);
//             while (rs.next()) {
//                 listMedicament.add(new Medicament(rs.getString("nom_medicament"),
//                         new Marque(rs.getString("marque")),
//                         new Forme("forme"), new Age(rs.getString("type_age")),
//                         new ModeAdministration(rs.getString("mode_administration")),
//                         new Allaitement(rs.getBoolean("is_allaitement")),
//                         rs.getString("description_medicament")));
//             }
//             medcs = new Medicament[listMedicament.size()];
//             listMedicament.copyInto(medcs);
//         } catch (Exception e) {
//             e.printStackTrace();
//         } finally {
//             connect.close();
//             stmt.close();
//         }
//         return medcs;
//     }

//     public Medicament[] filtreMedicamentOptimise(String nomMedicament, int marque, int forme, int mode_administration)
//             throws Exception {
//         Connection connect = null;
//         Statement stmt = null;
//         String query = "";
//         String sql = "select * from vue_medicament_detaillee where 1<2 ";
//         if (nomMedicament != "") {
//             query = query + " and nom_medicament like '%" + nomMedicament + "%' ";
//         }
//         if (marque != 0) {
//             query = query + " and id_marque = " + marque;
//         }
//         if (forme != 0) {
//             query = query + " and id_forme = " + forme;
//         }
//         if (mode_administration != 0) {
//             query = query + " and id_mode_administration = " + mode_administration;
//         }
//         sql = sql + query;
//         System.out.println(sql);
//         Medicament[] medcs = null;
//         Vector<Medicament> listMedicament = new Vector<>();
//         try {
//             connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
//             stmt = connect.createStatement();
//             ResultSet rs = stmt.executeQuery(sql);
//             while (rs.next()) {
//                 listMedicament.add(new Medicament(rs.getString("nom_medicament"), new Marque(rs.getString("marque")),
//                         new Forme(rs.getString("forme")), new Age(rs.getString("type_age")),
//                         new ModeAdministration(rs.getString("mode_administration")),
//                         new Allaitement(rs.getBoolean("is_allaitement")), rs.getString("description_medicament")));
//             }
//             medcs = new Medicament[listMedicament.size()];
//             listMedicament.copyInto(medcs);
//         } catch (Exception e) {
//             e.printStackTrace();
//         } finally {
//             connect.close();
//             stmt.close();
//         }
//         return medcs;
//     }

//     public int insertMedicament() throws Exception {
//         Connection connect = null;
//         Statement stmt = null;
//         String sql = "INSERT INTO medicament (nom_medicament,id_marque,id_forme,id_mode_administration,id_age,id_allaitement,description_medicament)values('"
//                 + this.getNomMedicament() + "'," + this.getMarque().getIdMarque() + "," + this.getForme().getIdForme()
//                 + "," + this.getModeAdministration().getIdModeAdministration() + "," + this.getTypeAge().getId() + ","
//                 + this.getIsAllaitement().getIdAllaitement() + ",'"
//                 + this.getDescription() + "')";
//         System.out.println(sql);
//         int MedicamentInseree = 0;
//         try {
//             connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
//             stmt = connect.createStatement();
//             MedicamentInseree = stmt.executeUpdate(sql);
//         } catch (Exception e) {
//             e.printStackTrace();
//         } finally {
//             connect.close();
//             stmt.close();
//         }
//         return MedicamentInseree;
//     }
// }

// // filtre par prix produit

//  public Medicament[] filtreMedicamentOptimise(String nomMedicament, int marque, int forme, int mode_administration)
//             throws Exception {
//         Connection connect = null;
//         Statement stmt = null;
//         String query = "";
//         String sql = "select * from vue_medicament_detaillee where 1<2 ";
//         if (nomMedicament != "") {
//             query = query + " and nom_medicament like '%" + nomMedicament + "%' ";
//         }
//         if (marque != 0) {
//             query = query + " and id_marque = " + marque;
//         }
//         if (forme != 0) {
//             query = query + " and id_forme = " + forme;
//         }
//         if (mode_administration != 0) {
//             query = query + " and id_mode_administration = " + mode_administration;
//         }
//         sql = sql + query;
//         System.out.println(sql);
//         Medicament[] medcs = null;
//         Vector<Medicament> listMedicament = new Vector<>();
//         try {
//             connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
//             stmt = connect.createStatement();
//             ResultSet rs = stmt.executeQuery(sql);
//             while (rs.next()) {
//                 listMedicament.add(new Medicament(rs.getString("nom_medicament"), new Marque(rs.getString("marque")),
//                         new Forme(rs.getString("forme")), new Age(rs.getString("type_age")),
//                         new ModeAdministration(rs.getString("mode_administration")),
//                         new Allaitement(rs.getBoolean("is_allaitement")), rs.getString("description_medicament")));
//             }
//             medcs = new Medicament[listMedicament.size()];
//             listMedicament.copyInto(medcs);
//         } catch (Exception e) {
//             e.printStackTrace();
//         } finally {
//             connect.close();
//             stmt.close();
//         }
//         return medcs;
    }