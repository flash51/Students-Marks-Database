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
        PreparedStatement ps = conn.prepareStatement("select * from subject left join marks on subject.subject_code = marks.subject_code where branch = (select branch from user where user_id = ?) and (user_id = ? or user_id is null)");
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
     <% if(rs.getString("marks_theory") == null || rs.getString("marks_practical") == null) { %>
     <form method="post" action="success_student.jsp">
         <td> N.A. </td>
         <td> N.A. </td>
         <input type="hidden" name="user_id" value="<%=rs.getString("user_id") %>" /> 
         <input type="hidden" name="subject_code" value="<%=rs.getString("subject_code") %> "/> 
    <td> <input type="submit" value="Enroll" /></td>
</form>
<%}
        else { %>
     <td> <%= rs.getInt("marks_theory") %> </td> 
     <td> <%= rs.getInt("marks_practical") %> </td>
     <%}%> 
 </tr>
 <% } %>
 </table>

</body>
</html>





