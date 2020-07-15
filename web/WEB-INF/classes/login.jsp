<%--
  Created by IntelliJ IDEA.
  User: hufox
  Date: 2020/7/9
  Time: 下午3:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/LoginServlet" method="post">
    用户名：<input type="text" name="name">
    密码：<input type="password" name="password">
    <button type="submit">登录</button>
</form>
</body>
</html>
