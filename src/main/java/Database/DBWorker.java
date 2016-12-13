package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by Bekzat on 06.12.2016.
 */
public class DBWorker {
    private static final String URL = "jdbc:mysql://localhost:3306/test";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";
   // private static  final String driver = "com.mysql.jdbc.Driver";

    private Connection connection;

    public DBWorker() {

        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return connection;
    }

}
