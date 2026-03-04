<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String userName = (String) session.getAttribute("userName");

    if (userName == null) {
        response.sendRedirect("login.html");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
</head>
<body>

<h2>Welcome, <%= userName %> 🎉</h2>

<a href="index.html">Go to Home</a>
<br><br>
<a href="logout">Logout</a>

</body>
</html>