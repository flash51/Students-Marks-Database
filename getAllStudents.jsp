<%@ page import="java.sql.*, java.util.*, java.io.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>ALL STUDENTS</title>
</head>
<body>
<center>
    <h2>Request Parameter</h2>
    <table width="50%" border="2" align="center">
<tr bgcolor="#00ffbf">
<th>Header Name</th><th>Header Value(s)</th>
</tr>
                                      
<%
        String branch = request.getParameter("branch");
        String subject_code = request.getParameter("subject_code");
       // out.print("<tr><td>"+branch+"</td> \n");
         //   out.print("<td>"+subject_code+"</td></tr> \n");
        String user_id = request.getParameter("user_id");
        int marks_theory = 0;
        int marks_practical = 0;
        if(request.getParameter("marks_theory") != null)
        {
              marks_theory =Integer.parseInt(request.getParameter("marks_theory"));
              marks_practical = Integer.parseInt(request.getParameter("marks_practical"));
        }
              // out.print("<tr><td>"+user_id+"</td> \n");
       // out.print("<td>"+marks_theory+"</td> \n");
       // out.print("<td>"+marks_practical+"</td></tr> \n");
   
     Enumeration names = request.getParameterNames();
            while(names.hasMoreElements()){
              String paramName = (String) names.nextElement();
              out.print("<tr><td>"+paramName+"</td>\n");
              String paramValue = request.getParameter(paramName);
              out.print("<td>"+paramValue+"</td>\n");
                                }
  %>
  </table>

    <h2>ALL STUDENTS</h2>
 <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");

      
        PreparedStatement ps = conn.prepareStatement("UPDATE marks set user_id=?, subject_code=?, marks_theory=?, marks_practical=? WHERE user_id=? ");
        if(user_id != null){
        ps.setString(1,user_id);
        ps.setString(2,subject_code);
        ps.setInt(3,marks_theory);
        ps.setInt(4,marks_practical);
        ps.setString(5,user_id);
       int i = ps.executeUpdate();
       if(i==0){
       PreparedStatement ps1 = conn.prepareStatement("INSERT into marks(user_id,subject_code,marks_theory,marks_practical) values(?,?,?,?)");
       ps1.setString(1,user_id);
       ps1.setString(2,subject_code);
       ps1.setInt(3,marks_theory);
       ps1.setInt(4,marks_practical);
       ps1.executeUpdate();
       ps1.close();
       }
        ps.close();
        }
        %>
 <table width="70%" border="2" align="center">
       <tr bgcolor="#00ffbf">
          <th>ROLL NUMBER</th> <th>FIRST NAME</th> <th>LAST NAME </th> <th>BRANCH</th> <th>SUBJECT CODE</th>  <th>THEORY MARKS</th> <th>PRACTICAL MARKS</th>
        </tr>
        <%   Statement st = conn.createStatement();
        String query ="select user.user_id, user.first_name, user.last_name, user.branch,marks.subject_code, marks.marks_theory, marks.marks_practical from user LEFT JOIN marks ON user.user_id = marks.user_id WHERE user.role='student' and marks.subject_code='"+subject_code+"'"; 
      
        ResultSet rs = st.executeQuery(query);
        %>  
<% while (rs.next()){ %>
<tr>
    <td> <%= rs.getString("user_id") %> </td>
    <td> <%= rs.getString("first_name") %> </td>
    <td> <%= rs.getString("last_name") %> </td>
    <td> <%=rs.getString("branch") %> </td>
    <td> <%=subject_code %> </td>
    
<% if(rs.getString("marks_theory") == null || rs.getString("marks_practical") == null) {%>
    <form method="post" action="getAllStudents.jsp">
        <input type="hidden" name="user_id" value="<%=rs.getString("user_id") %>" /> 
        <input type="hidden" name="subject_code" value="<%= subject_code %>" /> 
    <td> <input type="text" name="marks_theory" value="" /> </td>
    <td> <input type="text" name="marks_practical" value="" /> </td>
    <td> <input type="submit" value="Submit"  /></td>
  </form>
<% } 
      else { %>
   <td> <%=rs.getString("marks_theory") %> </td>
   <td> <%=rs.getString("marks_practical") %> </td>
   <td> <input type="submit" value="Update"  /></td>

<% } %>
</tr>
<%  } %>
       </table>
       </center>
        </body>
        </html> 






