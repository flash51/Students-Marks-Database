<%@ page import="java.sql.*"%>
<%
    String roll_num = request.getParameter("roll_num");
    String pass = request.getParameter("pass");
    String first_name = request.getParameter("first_name");
    String last_name = request.getParameter("last_name");
    String branch = request.getParameter("branch");
    String phone_num = request.getParameter("phone_num");
    String email = request.getParameter("email"); 

    Class.forName("com.mysql.jdbc.Driver");
    
    Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");

    PreparedStatement ps = conn.prepareStatement("insert into student(roll_num, pass, first_name, last_name, branch, phone_num, email) values (?,?,?,?,?,?,?)");
    
    ps.setString(1,roll_num);
    ps.setString(2,pass);
    ps.setString(3,first_name);
    ps.setString(4,last_name);
    ps.setString(5,branch);
    ps.setString(6,phone_num);
    ps.setString(7,email);
    int i = ps.executeUpdate();
    ps.close();

    if(i > 0){
    //response.sendRedirect("welcome.jsp");
    out.println("Registration of Student Succesfull!!");
    }
    else{
   //response.sendRedirect("??.jsp");
    }
 
 %>
    
    

