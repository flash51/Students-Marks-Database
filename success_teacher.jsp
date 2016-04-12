<% 
   if((session.getAttribute("uname")==null || session.getAttribute("uname")=="")){
%>
You are not Logged in</br>
<a href="index.jsp">Please Login Here</a>
<% } else {
%>
Welcome <%=session.getAttribute("uname")%>
<a href='logout_teacher.jsp'>Logout</a>
<% }

%>
