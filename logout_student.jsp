<%
        session.setAttribute("roll_num",null);
        session.invalidate();
        response.sendRedirect("index.jsp");
%>


