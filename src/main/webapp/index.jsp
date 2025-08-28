<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<%
  if (session.getAttribute("user") != null) {
    response.sendRedirect("board/welcome.jsp");
  } else {
    response.sendRedirect("board/login.jsp");
  }
%>


<%--<h1><%= "Hello World!" %></h1>--%>
<%--<br/>--%>
<%--<a href="colorServlet">colorServlet</a>--%>
<%--<a href="hello-servlet">Hello Servlet</a><br>--%>
<%--<a href="/lifeCycleServlet">lifeCycleServlet</a>--%>
</body>
</html>