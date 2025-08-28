
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/header.jsp" %>
<%
  String message = "";
  if ("POST".equalsIgnoreCase(request.getMethod())) {
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if ("admin".equals(username) && "1234".equals(password)) {
      session.setAttribute("user", username);
      response.sendRedirect("welcome.jsp");
      return;
    } else {
      message = "Invalid credentials";
    }
  }
%>
<div class="container mt-5">
  <h2>Login</h2>
  <form method="post">
    <div class="form-group">
      <label>Username</label>
      <input type="text" name="username" class="form-control" required>
    </div>
    <div class="form-group">
      <label>Password</label>
      <input type="password" name="password" class="form-control" required>
    </div>
    <button type="submit" class="btn btn-primary">Login</button>
    <div class="text-danger mt-2"><%= message %></div>
  </form>
</div>
<%@ include file="/include/footer.jsp" %>


