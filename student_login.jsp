<%@ page import="java.sql.*" %>
<%
        String roll_num = request.getParameter("roll_num");
        String pass = request.getParameter("pass");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");

   PreparedStatement ps = conn.prepareStatement("select * from student where roll_num=? and pass=?");
   ps.setString(1,roll_num);
   ps.setString(2,pass);
   ResultSet rs = ps.executeQuery();

   if(rs.next()){
   session.setAttribute("roll_num",roll_num);
  // out.println("Welcome " +roll_num);
   response.sendRedirect("success_student.jsp"); 
   }
   else{
   out.println("Invalid Password <a href='index.jsp'>Try Again</a>");
   }
 
%>   
