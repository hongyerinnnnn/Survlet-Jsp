<%--
  Created by IntelliJ IDEA.
  User: popla
  Date: 2025-08-22
  Time: 오후 4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <h2 class="text-center">Login</h2>
            <!-- GET으로도 테스트해보고 싶으면 method="get"으로 바꾸면 됨 -->
            <form action="loginProcess.jsp" method="get">
                <div class="form-group">
                    <label for="email">이메일</label>
                    <input type="text" class="form-control" id="email" name="email" placeholder="이메일 입력">
                </div>
                <div class="form-group">
                    <label for="password">비밀번호</label>
                    <input type="text" class="form-control" id="password" name="password" placeholder="비밀번호 입력">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Login</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
