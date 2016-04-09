<%@ page import="java.sql.*" %>
<%
     String uname = request.getParameter("uname");
     String pass = request.getParameter("pass");
     String teacher_name = request.getParameter("teacher_name");
     String branch = request.getParameter("branch");
     String subject_name = request.getParameter("subject_name");

     Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");

  PreparedStatement ps = conn.prepareStatement("insert into teacher(uname, pass, teacher_name, branch, subject_name) values(?,?,?,?,?)");
  ps.setString(1,uname);
  ps.setString(2,pass);
  ps.setString(3,teacher_name);
  ps.setString(4,branch);
  ps.setString(5,subject_name);
  int i = ps.executeUpdate();
  ps.close();

    if(i > 0 ){
       //response.sendRedirect("welcome.jsp");
      out.println("Registration of Teacher Successfull!!");
     }
    else{
    //respose.sendRedirect("??.jsp");
     }
 %> 

