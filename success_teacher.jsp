<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title> TEACHER HOME PAGE</title>
</head>
<% 
   if((session.getAttribute("user_id")==null || session.getAttribute("user_id")=="")){
%>
You are not Logged in</br>
<a href="index.jsp">Please Login Here</a>
<% } else {
%>
Welcome <%=session.getAttribute("user_id")%></br>
</br>
ENTER SUBJECTS IN DATABASE :  <a href="subject_add.jsp"> CLICK HERE </a> </br>
</br>
</br>
<body>
<form method="post" action="getAllStudents.jsp">
        <table border="1" width="35%" cellpadding="5">
            <thead>
                <tr>
                    <th colspan="2"> TO ENTER MARKS: </th>
                </tr>
            </thead>
            <tbody>
            <tr>
                <td>BRANCH</td>
                <td> <input type="text" name="branch" value="" /</td>
            </tr>
            <tr>  
                <td>SUBJECT CODE</td>
                <td> <input type="text" name="subject_code" value="" /> </td>
            </tr>  
            <tr>
                <td> <input type="submit" value="Submit"  /></td>
                <td> <input type="reset" value="Reset"/></td>
            </tr>
            </tbody>
        </table>
</form>
</body>
</br>
</br>
<a href='logout.jsp'>Logout</a>
<% }

%>
