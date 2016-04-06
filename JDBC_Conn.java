import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

public class JDBC_Conn 
{
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

        void insert(String roll_num, 
                         String first_name, 
                         String last_name, 
                         String branch,
                         String phone,
                         String email){
          
          String connectionUrl = "jdbc:mysql://localhost:3306/student_info";
          String dbUser = "root";
          String dbPwd = "sharma";
          Connection conn;
          ResultSet rs;
          
         String queryString = "insert into students values("+"'"+roll_num+"'"+", '"+first_name+"' , '"+last_name+"' , '"+branch+"' , '"+phone+"' , '"+email+"' , CURRENT_TIMESTAMP());";
        
        // System.out.println(queryString);
 
        try
        {
            conn = DriverManager.getConnection(connectionUrl, dbUser, dbPwd);
           
            Statement stmt = conn.createStatement();
       
            stmt.executeUpdate(queryString);
       
            if(conn != null) 
            {   conn.close(); 
                conn = null; 
            }
        }
        catch(SQLException sqle)
        {
            System.out.println("SQL Exception thrown: "+sqle);
        }
    }

    public static void main(String[] args) 
    {
        JDBC_Conn j = new JDBC_Conn();
        j.insert("186","kinshuk","sarabhai","cse","9989898020","kinshuksarabhai@gmail.com");
    }

}
