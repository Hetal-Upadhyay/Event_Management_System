<%@page import="com.entities.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    user u=(user)session.getAttribute("currentUser");
    String firstname = u.getFirstname();
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Events</title>
    </head>
    <body>
        <h1>Hello <%=firstname %></h1>
    </body>
</html>
