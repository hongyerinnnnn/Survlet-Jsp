<%--
  Created by IntelliJ IDEA.
  User: popla
  Date: 2025-08-29
  Time: 오전 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
            crossorigin="anonymous"></script>
    <script>
        $(function () {
            $("button#close").click(function () {
                if($("input#chk").is(":checked")){
                    // 쿠키저장
                    var date = new Date();
                    date.setTime(data.getTime()+(30*1000));//30초
                    document.cookie = "popupYN=done;path=/;expires"+date.toUTCString();
                }
                window.close();
            })
        });
    </script>
</head>
<body>
<h2>공지사항</h2>
<p>여기에 공지사항을 넣어주세요</p>
<input type="checkbox" id="chk">30초 동안 이 창을 열지 않음<br>
<button id="close">닫기</button>
</body>
</html>
