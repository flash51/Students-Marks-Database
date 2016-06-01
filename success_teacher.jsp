<% 
   if((session.getAttribute("user_id")==null || session.getAttribute("user_id")=="")){
%>
You are not Logged in</br>
<a href="index.jsp">Please Login Here</a>
<% } else {
%>
Welcome <%=session.getAttribute("user_id")%></br>
</br>
ENTER SUBJECTS IN DATABASE :  <a href="subject_add.jsp"> CLICK HERE </a> </br>
</br>
</br>
ENTER MARKS OF STUDENTS:  <a href='marks_in.jsp'> CLICK HERE</a></br>
</br>
</br>
<a href='logout.jsp'>Logout</a>
<% }

%>
