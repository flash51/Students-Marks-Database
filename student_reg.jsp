<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>STUDENT REGISTRATION</title>
</head>
<body>
<form method="post" action="student_registration.jsp">
    <center>
        <table border="1" width="35%" cellpadding="5"> 
            <thead>
                <tr>
                    <th colspan="2">STUDENT REGISTRATION</th>
                </tr>
            </thead>
            <tbody>
            <tr>
                <td>Student Roll Number</td>
                <td> <input type="text" name="roll_num" value="" /> </td>
            </tr>
            <tr>
                <td>Password</td>
                <td> <input type="password" name="pass" value="" /> </td>
            </tr>
            <tr>
                <td>First Name</td>
                <td> <input type="text" name="first_name" value="" /> </td>
            </tr> 
            <tr>
                <td>Last Name</td>
                <td> <input type="text" name="last_name" value="" /> </td>
            </tr> 
            <tr>
                <td>Branch</td>
                <td> <input type="text" name="branch" value="" /> </td>
            </tr> 
            <tr>
                <td>Phone Number</td>
                <td> <input type="text" name="phone_num" value="" /> </td>
            </tr> 
            <tr>
                <td>Email Address</td>
                <td> <input type="text" name="email" value="" /> </td>
            </tr> 
            <tr>
                <td> <input type="submit" value="Register" /</td>
                <td> <input type="reset" value="Reset" /</td>
            </tr>
            </tbody>
        </table>
    </center>
</form>
</body>
</html>





