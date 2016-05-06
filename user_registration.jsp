<%@ page import="java.sql.*"%>
<%
    String user_id = request.getParameter("user_id");
    String pass = request.getParameter("pass");
    String first_name = request.getParameter("first_name");
    String last_name = request.getParameter("last_name");
    String role = request.getParameter("role");
    String branch = request.getParameter("branch");
    String phone_num = request.getParameter("phone_num");
    String email = request.getParameter("email"); 

    Class.forName("com.mysql.jdbc.Driver");
    
    Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");

    PreparedStatement ps = conn.prepareStatement("insert into user(user_id, pass, first_name, last_name, role, branch, phone_num, email) values (?,?,?,?,?,?,?,?)");
    
    ps.setString(1,user_id);
    ps.setString(2,pass);
    ps.setString(3,first_name);
    ps.setString(4,last_name);
    ps.setString(5,role);
    ps.setString(6,branch);
    ps.setString(7,phone_num);
    ps.setString(8,email);
    int i = ps.executeUpdate();
    ps.close();

    if(i > 0){
    response.sendRedirect("welcome.jsp");
    //out.println("Registration of Student Succesfull!!");
    }
    else{
    response.sendRedirect("index.jsp");
    }
 
 %>
    
    

