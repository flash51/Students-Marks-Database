<%@ page import="java.sql.*, java.util.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

<title>ALL STUDENTS</title>
</head>
<body>
<center>
    <h2>ALL STUDENTS</h2>
 <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");

        Statement st = conn.createStatement();
        String query ="select user.user_id, user.first_name, user.last_name, user.branch,marks.subject_code,subject.subject_name, marks.marks_theory, marks.marks_practical from user LEFT JOIN marks ON (user.user_id = marks.user_id) INNER JOIN subject ON (marks.subject_code = subject.subject_code) WHERE user.role='student' "; 
        //PreparedStatement stmt = null ;
        ResultSet rs = st.executeQuery(query);
 %>
 <table width="70%" border="2" align="center">
       <tr bgcolor="#00ffbf">
          <th>ROLL NUMBER</th> <th>FIRST NAME</th> <th>LAST NAME </th> <th>BRANCH</th> <th>SUBJECT CODE</th>  <th>SUBJECT NAME</th> <th>THEORY MARKS</th> <th>PRACTICAL MARKS</th>
        </tr>
          
<% while (rs.next()){ %>
<tr>
    <td> <%= rs.getString("user_id") %> </td>
    <td> <%= rs.getString("first_name") %> </td>
    <td> <%= rs.getString("last_name") %> </td>
    <td> <%=rs.getString("branch") %> </td>
    <td> <%=rs.getString("subject_code") %> </td>
    <td> <%=rs.getString("subject_name") %> </td>
    <td> <%=rs.getInt("marks_theory") %> </td>
    <td> <%=rs.getInt("marks_practical") %> </td>
</tr>
<%  } %>
        </table>
       </center>
        </body>
        </html> 






