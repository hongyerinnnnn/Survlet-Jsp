<%--
  Created by IntelliJ IDEA.
  User: popla
  Date: 2025-08-27
  Time: 오후 3:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id ="bean" class="com.multi.model.vo.WriteVO" scope="application"/>
<jsp:setProperty name="bean" property="*"/>

<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="list.jsp"><%=bean%></a>
</body>
</html>
