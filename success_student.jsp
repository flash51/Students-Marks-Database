<% 
  if((session.getAttribute("user_id")==null || session.getAttribute("user_id")=="")){
%>
You are Not Logged in </br>
<a href="index.jsp">Please Login Here </a>
<%} else {
%>
Welcome  <%=session.getAttribute("user_id")%><br>
<a href="logout.jsp">Logout</a>
<% }

%>
