<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<html>
<head>
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h1 {
            font-size: 36px;
            background-color: rgba(0, 0, 0, 0.3);
            padding: 20px 30px;
            border-radius: 12px;
        }
    </style>
</head>
<body>
<h1>Добрый вечер, <%= username %>!</h1>
</body>
</html>
