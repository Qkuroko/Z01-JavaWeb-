<%--
  Created by IntelliJ IDEA.
  User: hufox
  Date: 2020/7/15
  Time: 下午2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cn.edu.ahtcm.bean.User" %>
<%
    User user = (User)request.getSession().getAttribute("user");
%>
<html>
<head>
    <title>Title</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">当前用户：<%out.print(user.getName()); %></a></li>
                <li><a href="/LoginOut">[退出]</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-md-4">
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="/ArticleListServlet">文章列表</a></li>
                <li><a href="/admin/articleAdd.jsp">添加文章</a></li>
                <li><a href="/UserListServlet">用户列表</a></li>
            </ul>
            <hr class="hidden-sm hidden-md hidden-lg">
        </div>
        <div class="col-md-8">
            <h2>博客管理后台</h2>
        </div>
    </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
    <p>底部内容</p>
</div>
</body>
</html>
