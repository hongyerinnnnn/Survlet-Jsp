<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: popla
  Date: 2025-08-27
  Time: 오후 1:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Session객체</h1>
<%
    // request, response, pageContext
    // session
    // application
%>
session.getServletContext() = 는 웹어플리케이션의 전체 범위에 접근할 때 사용하는 메서드
<%=
session.getServletContext()
%>
session.getClass() =
<%=
session.getClass()
%>

<%
    HttpSession session1;//session의 기본 자료형은 interface이다.
    session.setAttribute("msg", "hello");
    session.setAttribute("message", "hi");
    session.getAttribute("mas");
%>
session.getAttribute("msg")=
<%=session.getAttribute("msg")%><br>
session.getMaxInactiveInterval()=
<%=session.getMaxInactiveInterval()%><br>
Date(session.getLastAccessedTime()=
<%=new Date(session.getLastAccessedTime())%><br>
Date(session.getCreationTime())=
<%=new Date(session.getCreationTime())%>
</body>
</html>
