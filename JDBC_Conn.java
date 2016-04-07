import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

public class JDBC_Conn 
{
    MyConnection connector;
    
    public JDBC_Conn(){
    connector = new MyConnection("mysql","localhost",3306,"student_info","root","sharma");    
    }

    void insertStudent(String roll_num, 
                         String first_name, 
                         String last_name, 
                         String branch,
                         String phone,
                         String email){
          
         ResultSet rs;
          
         String queryString = "insert into students values("+"'"+roll_num+"'"+", '"+first_name+"' , '"+last_name+"' , '"+branch+"' , '"+phone+"' , '"+email+"' , CURRENT_TIMESTAMP());";
        
        // System.out.println(queryString);
 
        try
        {
            Connection conn = connector.getConn();
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

   void insertTeacher(String uname,
                        String pass,
                        String teacher_name,
                        String branch,
                        String subject){
          
         ResultSet rs;
          
         String queryString = "insert into teacher values(1,"+"'"+uname+"'"+", '"+pass+"' , '"+teacher_name+"' , '"+branch+"' , '"+subject+"');";
        
         //System.out.println(queryString);
 
        try
        {
            Connection conn = connector.getConn();
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
        j.insertStudent("186","kinshuk","sarabhai","cse","9989898020","kinshuksarabhai@gmail.com");
        j.insertTeacher("mohit","pass","mohit narang","ece","Digital Electronics");
    }

}
