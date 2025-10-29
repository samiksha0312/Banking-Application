package util;


import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.cj.jdbc.Driver;

public class DBConnection {
    private static Connection connection;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/bank_app","root","root");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return connection;
    }
}
