<% 
  if((session.getAttribute("roll_num")==null || session.getAttribute("roll_num")=="")){
%>
You are Not Logged in </br>
<a href="index.jsp">Please Login Here </a>
<%} else {
%>
Welcome <%=session.getAttribute("roll_num")%>
<a href="logout_student.jsp">Logout</a>
<% }

%>
