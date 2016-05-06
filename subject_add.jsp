<%@page contentType="text.html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title> ADD COURSES </title>
</head>
<body>
<form method="post" action="subject_addition.jsp">
    <center>
        <table border="1" width="35%" cellpadding="5">
            <thead>
                <tr>
                    <th colspan="2">ADD SUBJECT HERE (ONLY TEACHERS)</th>
                </tr>
            </thead>
            <tbody>
            <tr>
                <td>SEMESTER</td>
                <td><input type="number" name="semester" min="1" max="8" step="1" value="1"></td>
            </tr>
            <tr>
                <td>SUBJECT NAME</td>
                <td> <input type="text" name="subject_name" value="" /> </td>
            </tr>
            <tr>
                <td>SUBJECT CODE</td>
                <td> <input type="text" name="subject_code" value="" /> </td>
            </tr>
            <tr>
                <td>THEORY FIXED MARKS</td>
                <td> <input type="number" name="theory" min="0" max="100" step="5" value="0"> </td>
            </tr>
            <tr>
                <td>PRACTICAL FIXED MARKS</td>
                <td> <input type="number" name="practical" min="0" max="100" step="5" value="0" </td>
            </tr>
            <tr>
                <td> <input type="submit" value="Submit" /> </td>
                <td> <input type="reset" value="Reset" /> </td>
            </tr>
            </tbody>
        </table>
    </center>
</form>
</body>
</html>

