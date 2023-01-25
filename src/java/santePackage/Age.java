package santePackage;

public class Age {
    int id;
    String typeAge;

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTypeAge() {
        return this.typeAge;
    }

    public void setTypeAge(String typeAge) {
        this.typeAge = typeAge;
    }

    public Age() {

    }

    public Age(int id) {
        this.id = id;
    }

    public Age(String typeAge) {
        setTypeAge(typeAge);
    }

    public Age(int id, String typeAge) {
        this.id = id;
        this.typeAge = typeAge;
    }

    // public Age[] selectAge() throws Exception {
    // Connection connect = null;
    // Statement stmt = null;
    // String sql = "select * from Age";
    // Age[] fr = null;
    // Vector<Age> listAge = new Vector<>();
    // try {
    // connect = ConnectToDB.getConnection("Postgres", "postgres", "root");
    // stmt = connect.createStatement();
    // ResultSet rs = stmt.executeQuery(sql);
    // while (rs.next()) {
    // listAge.add(new Age(rs.getInt("id_age"),
    // rs.getString("type_age")));
    // }
    // fr = new Age[listAge.size()];
    // listAge.copyInto(fr);
    // } catch (Exception e) {
    // e.printStackTrace();
    // } finally {
    // connect.close();
    // stmt.close();
    // }
    // return fr;
    // }
}
