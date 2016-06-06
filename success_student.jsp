<%@ page import="java.sql.*, java.util.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>STUDENT HOMEPAGE</title>
</head>
<h2> <marquee>STUDENT HOMEPAGE </marquee></h2>
<body>
<% 
    if((session.getAttribute("user_id") == null || session.getAttribute("user_id")=="")){
%>
<center>
You are Not Logged in </br>
<a href="index.jsp">Please Login Here </a>
<%} else {
%>
Welcome  <%=session.getAttribute("user_id")%><br>
<a href="logout.jsp">Logout</a>
<% } %>
</center>
</br>
</br>
<%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");
        
        String uid = (String)session.getAttribute("user_id");
        String subject_code = request.getParameter("subject_code");

        if(request.getParameter("enroll") != null){
        PreparedStatement ps1 = conn.prepareStatement("insert into marks(user_id,subject_code,marks_theory, marks_practical) values(?,?,?,?)");
        ps1.setString(1,uid);
        ps1.setString(2,subject_code);
        ps1.setNull(3,java.sql.Types.INTEGER);
        ps1.setNull(4,java.sql.Types.INTEGER);
        ps1.executeUpdate();
        }
        PreparedStatement ps = conn.prepareStatement("select * from subject left join (select * from marks where user_id = ?) as A on subject.subject_code = A.subject_code where branch = (select branch from user where user_id = ?)");
        ps.setString(1,uid);
        ps.setString(2,uid);
        ResultSet rs = ps.executeQuery();
       
%>
<table width="70%" border="2" align="center">
    <tr bgcolor="#00ffbf">
        <th>SUBJECT CODE</th><th>SUBJECT NAME</th> <th>MARKS THEORY</th> <th> MARKS PRACTICAL</th>
            </tr>
           
 <% while (rs.next()){ %>
 <tr>
     <td> <%= rs.getString("subject_code") %> </td>
     <td> <%= rs.getString("subject_name") %> </td>
     <% if(rs.getString("user_id") == null ) { %>
     <form method="post" action="success_student.jsp">
         <td> N.A. </td>
         <td> N.A. </td>
         <input type="hidden" name="user_id" value="<%=rs.getString("user_id") %>" /> 
         <input type="hidden" name="subject_code" value="<%=rs.getString("subject_code") %> "/>
         <input type="hidden" name="enroll" value="enroll" /> </td> 
    <td> <input type="submit" value="Enroll" /></td>
</form>
<%}
        else if(rs.getString("marks_theory")==null || rs.getString("marks_practical")==null){ %>
        <td> Enrolled, No Marks</td>
        <td> Enrolled, No Marks</td>
        <% }
        else { %>
     <td> <%= rs.getInt("marks_theory") %> </td> 
     <td> <%= rs.getInt("marks_practical") %> </td>
     <%}%> 
 </tr>
 <% } %>
 </table>

</body>
</html>





