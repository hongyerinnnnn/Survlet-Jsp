<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String userId = (String) request.getAttribute("userId");
  Object loginTime = request.getAttribute("loginTime");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>로그인 성공</title>
  <style>
    body { font-family:sans-serif; max-width:520px; margin:40px auto; }
    .card { padding:20px; border:1px solid #ddd; border-radius:12px; }
    a { display:inline-block; margin-top:12px; }
  </style>
</head>
<body>
<div class="card">
  <h1>로그인 성공 🎉</h1>
  <p><b><%= userId %></b> 님, 환영합니다.</p>
  <p>로그인 시간: <%= loginTime %></p>
  <a href="<%= request.getContextPath() %>/study/login.jsp">다시 로그인</a>
</div>
</body>
</html>
