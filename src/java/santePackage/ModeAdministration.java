/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package santePackage;

public class ModeAdministration {
    int idModeAdministration;
    String modeAdministration;

    public int getIdModeAdministration() {
        return idModeAdministration;
    }

    public void setIdModeAdministration(int idModeAdministration) {
        this.idModeAdministration = idModeAdministration;
    }

    public String getModeAdministration() {
        return modeAdministration;
    }

    public void setModeAdministration(String modeAdministration) {
        this.modeAdministration = modeAdministration;
    }

    public ModeAdministration() {

    }

    public ModeAdministration(int idModeAdministration) {
        setIdModeAdministration(idModeAdministration);
    }

    public ModeAdministration(String modeAdministration) {
        setModeAdministration(modeAdministration);
    }

    public ModeAdministration(int idModeAdministration, String modeAdministration) {
        setIdModeAdministration(idModeAdministration);
        setModeAdministration(modeAdministration);
    }

    // public ModeAdministration[] selectMode_administration() throws Exception {
    // Connection connect = null;
    // Statement stmt = null;
    // String sql = "select * from mode_administration";
    // ModeAdministration[] fr = null;
    // Vector<ModeAdministration> listMode_administration = new Vector<>();
    // try {
    // connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
    // stmt = connect.createStatement();
    // ResultSet rs = stmt.executeQuery(sql);
    // while (rs.next()) {
    // listMode_administration.add(new
    // ModeAdministration(rs.getInt("id_mode_administration"),
    // rs.getString("mode_administration")));
    // }
    // fr = new ModeAdministration[listMode_administration.size()];
    // listMode_administration.copyInto(fr);
    // } catch (Exception e) {
    // e.printStackTrace();
    // } finally {
    // connect.close();
    // stmt.close();
    // }
    // return fr;
    // }
}
