<%@ page import="java.sql.*" %>
<%
        String user_id = request.getParameter("user_id");
        String pass = request.getParameter("pass");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");

   PreparedStatement ps = conn.prepareStatement("select * from user where user_id=? and pass=?");
   ps.setString(1,user_id);
   ps.setString(2,pass);
   ResultSet rs = ps.executeQuery();

   if(rs.next()){
   String role = rs.getNString("role");
   if(role=="student")
   {
     response.sendRedirect("success_student.jsp");
   }
   else if(role=="teacher")
   {
      response.sendRedirect("success_teacher.jsp");
   }
   session.setAttribute("user_id",user_id);
  // out.println("Welcome " +roll_num);
  // response.sendRedirect("success.jsp"); 
   }
   else{
   out.println("Invalid Password or User-ID <a href='index.jsp'>Try Again</a>");
   }
 
%>   
