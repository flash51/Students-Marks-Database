<%@ page import="java.sql.*" %>
<%
        String subject_name = request.getParameter("subject_name");
        String subject_code = request.getParameter("subject_code");
        String theory = request.getParameter("theory");
        String practical = request.getParameter("practical");

        Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");

     PreparedStatement ps = conn.prepareStatement("insert into course(subject_name,subject_code,theory,practical) values(?,?,?,?)");

     ps.setString(1,subject_name);
     ps.setString(2,subject_code);
     ps.setString(3,theory);
     ps.setString(4,practical);
     int i = ps.executeUpdate();
     ps.close();

     if(i > 0){
     //respose.sendRedirect("??.jsp");
     out.println("New Course Added!!");
     }
     else{
     //respose.sendRedirect("");
     }

%>
