/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package santePackage;

import java.sql.*;
import java.util.Vector;

import connection.ConnectToDB;

public class Allaitement {
    int idAllaitement;
    boolean allaitement;

    public Allaitement() {
    }

    public Allaitement(int idAllaitement) {
        this.idAllaitement = idAllaitement;
    }

    public Allaitement(boolean allaitement) {
        this.allaitement = allaitement;
    }

    public Allaitement(int idAllaitement, boolean allaitement) {
        this.idAllaitement = idAllaitement;
        this.allaitement = allaitement;
    }

    public int getIdAllaitement() {
        return this.idAllaitement;
    }

    public void setIdAllaitement(int idAllaitement) {
        this.idAllaitement = idAllaitement;
    }

    public boolean isAllaitement() {
        return this.allaitement;
    }

    public boolean getAllaitement() {
        return this.allaitement;
    }

    public void setAllaitement(boolean allaitement) {
        this.allaitement = allaitement;
    }

    // public Allaitement[] selectAllaitement() throws Exception {
    //     Connection connect = null;
    //     Statement stmt = null;
    //     String sql = "select * from Allaitement";
    //     Allaitement[] fr = null;
    //     Vector<Allaitement> listAllaitement = new Vector<>();
    //     try {
    //         connect = ConnectToDB.getConnection("Postgres", "postgres", "nouart0505");
    //         stmt = connect.createStatement();
    //         ResultSet rs = stmt.executeQuery(sql);
    //         while (rs.next()) {
    //             listAllaitement
    //                     .add(new Allaitement(rs.getInt("id_allaitement"), rs.getBoolean("is_allaitement")));
    //         }
    //         fr = new Allaitement[listAllaitement.size()];
    //         listAllaitement.copyInto(fr);
    //     } catch (Exception e) {
    //         e.printStackTrace();
    //     } finally {
    //         connect.close();
    //         stmt.close();
    //     }
    //     return fr;
    // }

}

