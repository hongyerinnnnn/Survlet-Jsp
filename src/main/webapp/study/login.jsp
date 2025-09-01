<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <title>로그인</title>
    <style>
        body { font-family:sans-serif; max-width:520px; margin:40px auto; }
        form { display:grid; gap:10px; padding:20px; border:1px solid #ddd; border-radius:12px; }
        input, button { padding:10px; font-size:15px; }
        button { cursor:pointer; }
    </style>
</head>
<body>
<h1>로그인</h1>
<!-- POST 요청 → /study/login 서블릿 -->
<form method="post" action="${pageContext.request.contextPath}/study/login">
    <label>
        ID
        <input type="text" name="id" required />
    </label>
    <label>
        비밀번호
        <input type="password" name="password" required />
    </label>
    <button type="submit">로그인</button>
</form>
</body>
</html>
