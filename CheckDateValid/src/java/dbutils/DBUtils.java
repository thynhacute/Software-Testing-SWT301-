
package dbutils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Xqy
 */
public class DBUtils {
    public static Connection getConnection() throws SQLException, ClassNotFoundException{
        Connection connection = null;
        String id = "localhost";
        String instanceName = "SQLEXPRESS";
        String port = "1433";
        String db = "UserManagement";
        String username = "sa";
        String password = "1234567890";

        String urlDatabase = String.format("jdbc:sqlserver://%s\\%s:%s;databaseName=%s;user=%s;password=%s", id, instanceName, port, db, username, password);

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(urlDatabase);
            System.out.println("Connection to database successfull");
        } catch (SQLException error) {
            error.printStackTrace();
        } catch (ClassNotFoundException error) {
            error.printStackTrace();
        }

        return connection;
    }
}
