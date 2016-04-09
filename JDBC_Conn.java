import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;

public class JDBC_Conn 
{
    MyConnection connector;
    
    public JDBC_Conn(){
    connector = new MyConnection("mysql","localhost",3306,"student_info","root","sharma");    
    }

    void insertStudent(String roll_num,
                         String pass, 
                         String first_name, 
                         String last_name, 
                         String branch,
                         String phone_num,
                         String email) {
       try
        {
           Connection conn = connector.getConn();
           PreparedStatement updatemem = conn.prepareStatement("insert into student(roll_num, pass, first_name, last_name, branch, phone_num, email) values(?,?,?,?,?,?,?)");
        updatemem.setString(1,roll_num);
        updatemem.setString(2,pass);
        updatemem.setString(3,first_name);
        updatemem.setString(4,last_name);
        updatemem.setString(5,branch);
        updatemem.setString(6,phone_num);
        updatemem.setString(7,email);
        updatemem.executeUpdate();
        updatemem.close();

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
                        String subject) {
          
       try
        {
           Connection conn = connector.getConn();
           PreparedStatement ps = conn.prepareStatement("insert into teacher (uname, pass, teacher_name, branch, subject) values(?,?,?,?,?)");

               ps.setString(1,uname);
               ps.setString(2,pass);
               ps.setString(3,teacher_name);
               ps.setString(4,branch);
               ps.setString(5,subject);
               ps.executeUpdate();
               ps.close(); 
               
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
        j.insertStudent("186","pass","kinshuk","sarabhai","cse","9989898020","kinshuksarabhai@gmail.com");
        j.insertTeacher("mohit","pass","mohit narang","ece","Digital Electronics");
    }

}
