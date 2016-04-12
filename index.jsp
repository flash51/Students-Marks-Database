<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main Login Page</title>
</head>
<body>
<form method="POST" action="student_login.jsp">
    <left>
        <table border="1" width="30%" cellpadding="3">
            <thead>
                <tr>
                    <th colspan="2">Student Login here</th>
                </tr>
            </thead>
            <tbody>
            <tr>
                <td> Student Roll Number</td>
                <td> <input type="text" name="roll_num" value="" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td> <input type="password" name="pass" value="" /></td>
            </tr>
            <tr>
                <td> <input type="submit" value="Login" /></td>
                <td> <input type="reset" value="Reset" /></td>
            </tr>
            <tr>
            <td colspan="2">New Student !!<a href="student_reg.jsp">Register Here</a></td>
           </tr>
           </tbody>
       </table>
       </left>
   </form>
   <form method="POST" action="teacher_login.jsp"> 
   <center>
        <table border="1" width="30%" cellpadding="3">
            <thead>
                <tr>
                    <th colspan="2">Teacher Login here</th>
                </tr>
            </thead>
            <tbody>
            <tr>
                <td> Teacher User Name</td>
                <td> <input type="text" name="uname" value="" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td> <input type="password" name="pass" value="" /></td>
            </tr>
            <tr>
                <td> <input type="submit" value="Login" /></td>
                <td> <input type="reset" value="Reset" /></td>
            </tr>
            <tr>
         <td colspan="2">Teacher Not Registered Yet !! <a href="teacher_reg.jsp">Register Here</a></td>           </tr>
           </tbody>
       </table>
   </center>
   </form>
   </body>
   </html>
            
           

