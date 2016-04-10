<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title> MARKS OF STUDENT</title>
</head>
<body>
<form method="post" action="marks_student.jsp">
    <center>
        <table border="1" width="35%" cellpadding="5">
            <thead>
                <tr>
                    <th colspan="2"> PUT STUDENT MARKS HERE(BY TEACHER)</th>
                </tr>
            </thead>
            <tbody>
            <tr>
                <td>STUDENT ROLL NUMBER</td>
                <td> <input type="text" name="roll_num" value="" /</td>
            </tr>
            <tr>  
                <td>SUBJECT CODE</td>
                <td> <input type="text" name="subject_code" value="" /> </td>
            </tr>
            <tr>  
                <td>THEORY MARKS </td>
                <td> <input type="number" name="theory" min="0" max="100" value="0" /> </td>
            </tr>
            <tr>  
                <td>PRACTICAL MARKS</td>
                <td> <input type="number" name="practical" min="0" max="100" value="0" /> </td>
            </tr>
            <tr>
                <td> <input type="submit" value="Submit Marks"  /></td>
                <td> <input type="reset" value="Reset"/></td>
            </tr>
            </tbody>
        </table>
    </center>
</form>
</body>
</html>

