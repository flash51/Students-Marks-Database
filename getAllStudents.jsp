<%@ page import="java.sql.*, java.util.*, java.io.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>ALL BRANCH STUDENTS</title>
</head>
<body>
<center>
   <%/* <h2>Request Parameter</h2>
    <table width="50%" border="2" align="center">
<tr bgcolor="#00ffbf">
<th>Header Name</th><th>Header Value(s)</th>
</tr> */ %>
                                      
<%
        String branch = request.getParameter("branch");
        String subject_code = request.getParameter("subject_code");
        String user_id = request.getParameter("user_id");
        int marks_theory = 0;
        int marks_practical = 0;
        if(request.getParameter("marks_theory") != null)
        {
              marks_theory =Integer.parseInt(request.getParameter("marks_theory"));
              marks_practical = Integer.parseInt(request.getParameter("marks_practical"));
        }
//To see all the parameters
    /* Enumeration names = request.getParameterNames();
            while(names.hasMoreElements()){
              String paramName = (String) names.nextElement();
              out.print("<tr><td>"+paramName+"</td>\n");
              String paramValue = request.getParameter(paramName);
              out.print("<td>"+paramValue+"</td>\n");
           }*/
  %>
  </table>

    <h2>ALL STUDENTS</h2>
 <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info","root","sharma");
  
            PreparedStatement ps = conn.prepareStatement("UPDATE marks set marks_theory=?, marks_practical=? WHERE user_id=? and subject_code=? ");
         if(request.getParameter("update") != null){
        ps.setNull(1,java.sql.Types.INTEGER);
        ps.setNull(2,java.sql.Types.INTEGER);
        ps.setString(3,user_id);
        ps.setString(4,subject_code);
        ps.executeUpdate();
        }
     
        else {
        ps.setInt(1,marks_theory);
        ps.setInt(2,marks_practical);
        ps.setString(3,user_id);
        ps.setString(4,subject_code);

       int i = ps.executeUpdate();
       // if(i==0){}
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
      <form method="post" action="getAllStudents.jsp" >
   <td> <%=rs.getString("marks_theory") %> </td>
   <td> <%=rs.getString("marks_practical") %> </td>
        <input type="hidden" name="user_id" value="<%=rs.getString("user_id") %>" /> 
        <input type="hidden" name="subject_code" value="<%= subject_code %>" /> 
   <input type="hidden" name="update" value="update" /> </td>
   <td> <input type="submit" value="Update"  /></td>
   </form>

<% } %>
</tr>
<%  } %>
       </table>
       </center>
        </body>
<a href='logout.jsp'>Logout</a>
        </html> 






