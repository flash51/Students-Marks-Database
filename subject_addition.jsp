<%@ page import="java.sql.*" %>
<%
        String semester = request.getParameter("semester");
        String subject_name = request.getParameter("subject_name");
        String subject_code = request.getParameter("subject_code");
        String theory = request.getParameter("theory");
        String practical = request.getParameter("practical");

        Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");

     PreparedStatement ps = conn.prepareStatement("insert into subject(semester, subject_name, subject_code,theory,practical) values(?,?,?,?,?)");

     ps.setString(1,semester);
     ps.setString(2,subject_name);
     ps.setString(3,subject_code);
     ps.setString(4,theory);
     ps.setString(5,practical);
     int i = ps.executeUpdate();
     ps.close();

     if(i > 0){
     //out.println("New Subject Added!!");
     response.sendRedirect("subject_add.jsp");
     }
     else{
     //respose.sendRedirect("");
	out.println("Duplicate Entry !!");
     }

%>
