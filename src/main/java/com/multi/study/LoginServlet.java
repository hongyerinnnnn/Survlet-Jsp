package com.multi.study;

import java.io.IOException;
import java.net.URLEncoder;
import java.time.LocalDateTime;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/study/login")   // login.jsp에서 POST하는 URL
public class LoginServlet extends HttpServlet {

    // 데모용 계정
    private static final String USER_ID = "scoula";
    private static final String USER_PW  = "java1234";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String id = trim(request.getParameter("id"));
        String pw = trim(request.getParameter("password"));

        String ctx = request.getContextPath();

        // 1. 빈 값 체크
        if (id.isEmpty() || pw.isEmpty()) {
            String msg = URLEncoder.encode("아이디/비밀번호를 모두 입력하세요.", "UTF-8");
            response.sendRedirect(ctx + "/study/fail.jsp?msg=" + msg);
            return;
        }

        // 2. 로그인 성공 여부
        if (USER_ID.equals(id) && USER_PW.equals(pw)) {
            // 성공 → RequestDispatcher.forward()
            request.setAttribute("userId", id);
            request.setAttribute("loginTime", LocalDateTime.now());

            RequestDispatcher rd = request.getRequestDispatcher("/study/success.jsp");
            rd.forward(request, response);
        } else {
            // 실패 → Redirect
            String msg = URLEncoder.encode("로그인 실패: 아이디 또는 비밀번호가 올바르지 않습니다.", "UTF-8");
            response.sendRedirect(ctx + "/study/fail.jsp?msg=" + msg);
        }
    }

    private String trim(String s) {
        return s == null ? "" : s.trim();
    }
}
