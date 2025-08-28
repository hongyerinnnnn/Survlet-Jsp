<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: popla
  Date: 2025-08-26
  Time: 오후 4:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Collection
<h1>응답객체의 정보</h1>
<%
    response.setHeader("content-length","!20");
    response.setHeader("X-Debug","ok");
    response.setHeader("keep-alive", "timeout=30");
    //    response.getWriter(); 응답객체 데이터는 응답지 stream을 갖고 있다
//    Collection<String> collection = response.getHeaderNames();
//    Iterator<String> iter = collection.iterator();
//    while(iter.hasNext()){
//        System.out.println(iter.next());
//    }
//    response.getWriter().write("<h1>TestServlet RunTime</h1>");
//    Cookie cookie = new Cookie("message","h1");
//    cookie.setMaxAge(60);
//    response.addCookie(cookie);
//    response.getWriter().println("Cookie set");

    System.out.println(response.getStatus());
    response.encodeURL("utf-8");
    System.out.println("response.getBufferSize()=" + response.getBufferSize());
    System.out.println("response.getContentType()"+response.getContentType());
%>
</body>
</html>
