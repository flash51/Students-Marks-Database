<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title> GET SEMESTER & SUBJECT CODE</title>
</head>
<body>
<form method="post" action="marks_student.jsp">
    <center>
        <table border="1" width="35%" cellpadding="5">
            <thead>
                <tr>
                    <th colspan="2"> ENTER DETAILS</th>
                </tr>
            </thead>
            <tbody>
            <tr>
                <td>SEMESTER</td>
                <td> <input type="number" name="semester" min="1" max="8" step="1" value="1" /</td>
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
    </center>
</form>
</body>
</html>

