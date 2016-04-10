<%@page contentType="text.html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title> ADD COURSES </title>
</head>
<body>
<form method="post" action="course_addition.jsp">
    <center>
        <table border="1" width="35%" cellpadding="5">
            <thead>
                <tr>
                    <th colspan="2">ADD COURSES HERE (ONLY TEACHERS)</th>
                </tr>
            </thead>
            <tbody>
            <tr>
                <td>Subject Name</td>
                <td> <input type="text" name="subject_name" value="" /> </td>
            </tr>
            <tr>
                <td>Subject Code</td>
                <td> <input type="text" name="subject_code" value="" /> </td>
            </tr>
            <tr>
                <td>Theory Fixed Marks</td>
                <td> <input type="number" name="theory" min="0" max="100" step="5" value="0"> </td>
            </tr>
            <tr>
                <td> Practical Fixed Marks </td>
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

