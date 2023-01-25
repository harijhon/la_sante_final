/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package santePackage;

import java.sql.*;
import java.util.Vector;

import connection.ConnectToDB;

public class Forme {
    int idForme;
    String typeForme;

    public int getIdForme() {
        return idForme;
    }

    public void setIdForme(int idForme) {
        this.idForme = idForme;
    }

    public String getTypeForme() {
        return typeForme;
    }

    public void setTypeForme(String typeForme) {
        this.typeForme = typeForme;
    }

    public Forme() {
    }

    public Forme(int idForme) {
        setIdForme(idForme);
    }

    public Forme(String typeForme) {
        setTypeForme(typeForme);
    }

    public Forme(int idForme, String typeForme) {
        setIdForme(idForme);
        setTypeForme(typeForme);
    }

    // public Forme[] selectForme() throws Exception {
    //     Connection connect = null;
    //     Statement stmt = null;
    //     String sql = "select * from forme";
    //     Forme[] fr = null;
    //     Vector<Forme> listForme = new Vector<>();
    //     try {
    //         connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
    //         stmt = connect.createStatement();
    //         ResultSet rs = stmt.executeQuery(sql);
    //         while (rs.next()) {
    //             listForme.add(new Forme(rs.getInt("id_forme"), rs.getString("forme")));
    //         }
    //         fr = new Forme[listForme.size()];
    //         listForme.copyInto(fr);
    //     } catch (Exception e) {
    //         e.printStackTrace();
    //     } finally {
    //         connect.close();
    //         stmt.close();
    //     }
    //     return fr;
    // }

    // public int insertForme(String forme) throws Exception {
    //     Connection connect = null;
    //     Statement stmt = null;
    //     String sql = "INSERT INTO forme (forme)values('" + forme + "');";
    //     int formeInseree = 0;
    //     try {
    //         connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
    //         stmt = connect.createStatement();
    //         formeInseree = stmt.executeUpdate(sql);
    //     } catch (Exception e) {
    //         e.printStackTrace();
    //     } finally {
    //         connect.close();
    //         stmt.close();
    //     }
    //     return formeInseree;
    // }

}
