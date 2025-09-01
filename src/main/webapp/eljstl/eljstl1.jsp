<%--
  Created by IntelliJ IDEA.
  User: popla
  Date: 2025-09-01
  Time: 오전 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
    //StringBuilder 라는 라이브러리는 가져와서 사용가능
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- Java 인식을 못하고 text 그대로 출력 됨--%>
<%--        for(int i=0;i<10;i++){--%>
<%--        }--%>
<%--    %>--%>
<%-- 아래의 내용은 모델1 방식 scriptlet을 이용해서 java구현--%>
<%--<%--%>
<%--    for(int i=0;i<10;i++){--%>

<%--    }--%>
<%--%>--%>
<%-- c:은 접두사를 의미 --%>

<c:forEach var="i" begin="1" end="10">
    <c:out value="Test"/>
</c:forEach>
<%-- if, elseif --%>
<c:set var="cnt" value="50"></c:set>
<c:if test="${cnt>=50}">
    <h2>cnt>=50</h2>

</c:if>
<c:set var = "num" value="100"/>
<c:choose>
    <c:when test="${num>=0 and num<=10}"><h1>num>=0 and num<=10</h1></c:when>
    <c:when test="${num>=11 and num<=20}"><h1>num>11 and num<=20</h1></c:when>
    <c:when test="${num>=21 and num<=30}"><h1>num>=21 and num<=30</h1></c:when>
    <c:otherwise><h1>otherwise</h1></c:otherwise><%--else 삼항을 의미 --%>
</c:choose>
</body>
</html>
