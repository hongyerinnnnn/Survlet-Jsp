<%--
  Created by IntelliJ IDEA.
  User: popla
  Date: 2025-08-27
  Time: 오후 2:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1> Result2.jsp</h1>
<%
    out.print("request =" + request.getAttribute("data")+"<br>");
    out.print("session =" + session.getAttribute("data")+"<br>");
    out.print("application =" + application.getAttribute("data"));

%>
</body>
</html>
