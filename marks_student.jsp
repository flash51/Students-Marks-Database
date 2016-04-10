<%@ page import="java.sql.*" %>
<%

        String roll_num = request.getParameter("roll_num");
        String subject_code = request.getParameter("subject_code");
        int marks_theory = Integer.parseInt(request.getParameter("theory"));
        int marks_practical = Integer.parseInt(request.getParameter("practical"));

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");

        PreparedStatement ps = conn.prepareStatement("insert into marks(roll_num, subject_code, marks_theory, marks_practical) values(?,?,?,?)");
        ps.setString(1,roll_num);
        ps.setString(2,subject_code);
        ps.setInt(3,marks_theory);
        ps.setInt(4,marks_practical);
        int i = ps.executeUpdate();
        ps.close();
        
        if(i > 0){
        //response.sendRedirect();
        out.println("Marks of Roll Number: "+roll_num+" -  Added to Database !");
        }
        else{
        out.println("Exception");
        
        }

%>
