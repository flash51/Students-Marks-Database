<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main Login Page</title>
</head>
<body>
<form method="POST" action="login.jsp">
    <center>
        <table border="1" width="30%" cellpadding="3">
            <thead>
                <tr>
                    <th colspan="2">LOGIN HERE </th>
                </tr>
            </thead>
            <tbody>
            <tr>
                <td> USER ID</td>
                <td> <input type="text" name="user_id" value="" /></td>
            </tr>
            <tr>
                <td>PASSWORD</td>
                <td> <input type="password" name="pass" value="" /></td>
            </tr>
            <tr>
                <td> <input type="submit" value="Login" /></td>
                <td> <input type="reset" value="Reset" /></td>
            </tr>
            <tr>
            <td colspan="2">Not Registered Yet!! <a href="user_reg.jsp">Register Here</a></td>
           </tr>
           </tbody>
       </table>
       </center>
  </body>
   </html>
            
           

