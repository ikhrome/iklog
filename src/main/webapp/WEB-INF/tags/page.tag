<%@tag description="Page layout" pageEncoding="UTF-8" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="title" fragment="true" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>
        <jsp:invoke fragment="title" /> &rsaquo; IK Blog
    </title>
    <link rel="stylesheet" href="<s:url value="resources/css/bootstrap.css"/>">
    <style type="text/css">
        body {
            padding-top: 75px;
        }
    </style>
    <jsp:invoke fragment="header" />
</head>
<body>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#iklog-collapse" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/">IK Blog</a>
            </div>
            <div class="collapse navbar-collapse" id="iklog-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="/">Home</a></li>
                    <li><a href="/blog">Read the blog</a></li>
                    <li><a href="/about">About Me</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#na">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <jsp:doBody />
    <script src="<s:url value="resources/js/jquery.min.js" />"></script>
    <script src="<s:url value="resources/js/bootstrap.min.js" />"></script>
    <jsp:invoke fragment="footer" />
</body>
</html>