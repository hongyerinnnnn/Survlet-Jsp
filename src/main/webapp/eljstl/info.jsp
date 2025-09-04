<%--
  Created by IntelliJ IDEA.
  User: popla
  Date: 2025-09-04
  Time: 오후 3:11
  To change this template use File | Settings | File Templates.
--%>
<%--
url 입력방법 : http://localhost:8080/jstlLesson?action=info
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:out value="id"/>: ${info.id}<br>
<c:out value="title"/>: ${info.title}<br>
<c:out value="content"/>: ${info.content}<br>
<c:out value="createdAt"/>${info.createdAt}<br>
</body>
</html>
