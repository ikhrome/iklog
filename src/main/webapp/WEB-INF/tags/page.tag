<%@tag description="Page layout" pageEncoding="UTF-8" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="title" fragment="true" %>
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
    <jsp:invoke fragment="header" />
</head>
<body>
    <jsp:doBody />
    <jsp:invoke fragment="footer" />
</body>
</html>