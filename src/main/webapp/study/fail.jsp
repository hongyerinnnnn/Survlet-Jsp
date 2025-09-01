<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String msg = request.getParameter("msg");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <title>로그인 실패</title>
    <style>
        body { font-family:sans-serif; max-width:520px; margin:40px auto; }
        .card { padding:20px; border:1px solid #f1c0c0; border-radius:12px; background:#fff6f6; }
        a { display:inline-block; margin-top:12px; }
    </style>
</head>
<body>
<div class="card">
    <h1>로그인 실패 ❌</h1>
    <p><%= (msg == null ? "로그인에 실패했습니다." : msg) %></p>
    <a href="<%= request.getContextPath() %>/study/login.jsp">로그인 페이지로 돌아가기</a>
</div>
</body>
</html>
