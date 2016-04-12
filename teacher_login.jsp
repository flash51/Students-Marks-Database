<%@ page import="java.sql.*" %>
<%
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");
  PreparedStatement ps = conn.prepareStatement("select * from teacher where uname=? and pass=?");
  ps.setString(1,uname);
  ps.setString(2,pass);
  ResultSet rs = ps.executeQuery();

  if (rs.next()){
  session.setAttribute("uname",uname);
 // out.println("Welcome  "+uname);
 response.sendRedirect("success_teacher.jsp");
  }
  else{
  out.println("Invalid Password  <a href='index.jsp'>Try Again</a>");
  }

  %>
