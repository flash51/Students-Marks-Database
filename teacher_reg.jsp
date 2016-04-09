<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>TEACHER REGISTRATION </title>
</head>
<body>
<form method="post" action="teacher_registration.jsp">
    <center>
        <table border="1" width="35%" cellpadding="5">
            <thead>
                <tr>
                    <th colspan="2">ENTER INFORMATION HERE</th>
                </tr>
            </thead>
            <tbody>
            <tr>
                <td>Teacher User Name</td>
                <td> <input type="text" name="uname" value="" /> </td>
            </tr>
            <tr>
                <td>Password</td>
                <td> <input type="password" name="pass" value="" /> </td>
            </tr>
            <tr>
                <td>Teacher Name</td>
                <td> <input type="text" name="teacher_name" value="" /> </td>
            </tr>
            <tr>
                <td>Branch</td>
                <td> <input type="text" name="branch" value="" /> </td>
            </tr>
            <tr>
                <td>Subject Name</td>
                <td> <input type="text" name="subject_name" value="" /> </td>
            </tr>
            <tr>
                <td> <input type="submit" value="Register" /> </td>
                <td> <input type="reset" value="Reset" /> </td>
            </tr>
            </tbody>
        </table>
    </center>
</form>
</body>
</html>

        

