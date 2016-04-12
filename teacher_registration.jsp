<%@ page import="java.sql.*" %>
<%
     String subject_code = request.getParameter("subject_code");
     String uname = request.getParameter("uname");
     String pass = request.getParameter("pass");
     String teacher_name = request.getParameter("teacher_name");
     String branch = request.getParameter("branch");

     Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");

  PreparedStatement ps = conn.prepareStatement("insert into teacher(subject_code, uname, pass, teacher_name, branch) values(?,?,?,?,?)");
  ps.setString(1,subject_code);
  ps.setString(2,uname);
  ps.setString(3,pass);
  ps.setString(4,teacher_name);
  ps.setString(5,branch);
  int i = ps.executeUpdate();
  ps.close();

    if(i > 0 ){
       response.sendRedirect("welcome.jsp");
      out.println("Registration of Teacher Successfull!!");
     }
    else{
     response.sendRedirect("index.jsp");
     }
 %> 

