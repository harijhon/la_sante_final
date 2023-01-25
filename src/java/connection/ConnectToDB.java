package connection;

import java.sql.*;

public class ConnectToDB {
    public static Connection getConnection(String typedata, String user, String password) throws Exception {
        Connection con = null;
        try {
            if (typedata.compareToIgnoreCase("Oracle") == 0) {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", user, password);
                System.out.println("mety eh");
            } else if (typedata.compareToIgnoreCase("Postgres") == 0) {
                Class.forName("org.postgresql.Driver");
                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/sante_tests", user, password);
                System.out.println("cvsdc");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return con;
    }
}
