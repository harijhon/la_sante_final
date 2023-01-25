/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package santePackage;

import java.sql.*;
import java.util.*;
import connection.*;

public class Marque {
    int idMarque;
    String nomMarque;

    public int getIdMarque() {

        return idMarque;
    }

    public void setIdMarque(int idMarque) {
        this.idMarque = idMarque;
    }

    public String getNomMarque() {
        return nomMarque;
    }

    public void setNomMarque(String nomMarque) {
        this.nomMarque = nomMarque;
    }

    public Marque(String nom) {
        setNomMarque(nom);
    }

    public Marque() {

    }

    public Marque(int idMarque) {
        setIdMarque(idMarque);
    }

    public Marque(int idMarque, String Marque) {
        setIdMarque(idMarque);
        setNomMarque(Marque);
    }

    // // public selectMarque
    // public Marque[] selectMarque() throws Exception {
    //     Connection connect = null;
    //     Statement stmt = null;
    //     String sql = "select * from Marque";
    //     Marque[] mr = null;
    //     Vector<Marque> listMarque = new Vector<>();
    //     try {
    //         connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
    //         stmt = connect.createStatement();
    //         ResultSet rs = stmt.executeQuery(sql);
    //         while (rs.next()) {
    //             listMarque.add(new Marque(rs.getInt("id_Marque"), rs.getString("Marque")));
    //         }
    //         mr = new Marque[listMarque.size()];
    //         listMarque.copyInto(mr);
    //     } catch (Exception e) {
    //         e.printStackTrace();
    //     } finally {
    //         connect.close();
    //         stmt.close();
    //     }
    //     return mr;
    // }

    // public int insertMarque(String Marque) throws Exception {
    //     Connection connect = null;
    //     Statement stmt = null;
    //     String sql = "INSERT INTO Marque (Marque)values('" + Marque + "');";
    //     int MarqueInseree = 0;
    //     try {
    //         connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
    //         stmt = connect.createStatement();
    //         MarqueInseree = stmt.executeUpdate(sql);
    //     } catch (Exception e) {
    //         e.printStackTrace();
    //     } finally {
    //         connect.close();
    //         stmt.close();
    //     }
    //     return MarqueInseree;
    // }
}
