import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MyConnection{

    /**Static block is executed when a class is loaded into memory
     * This Block loads MySQL's JDBC driver d */

    static
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch(ClassNotFoundException cnf)
        {
            System.out.println("Driver Not Found :"+cnf);
        }
    }


    String db, host, dbname, dbUser, dbPwd;
    int port;

    MyConnection(String db,
                   String host, 
                   int port, 
                   String dbname,
                   String dbUser,
                   String dbPwd) {
        this.db =db;
        this.host = host;
        this.dbname = dbname;
        this.port = port;
        this.dbUser = dbUser;
        this.dbPwd = dbPwd;
    }

        Connection getConn() throws SQLException {
        String connectionUrl = String.format("jdbc:%s://%s:%d/%s", db, host, port, dbname); 
        Connection conn = DriverManager.getConnection(connectionUrl,dbUser,dbPwd);
        return conn;
    }

    public static void main(String[] args){

        // Connection n = new Connection();
        //  n.getConn("mysql","localhost","3306","student_info");
    }
}

