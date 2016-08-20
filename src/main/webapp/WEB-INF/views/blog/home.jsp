<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<t:page>
    <jsp:attribute name="title">Blog posts</jsp:attribute>
    <jsp:body>

        <h1 style="text-align: center;">Listing of the blog posts:</h1>

        <c:forEach var="post" items="${posts}" varStatus="status">
            <h2><a href="/blog/post/${post.id}">${post.title}</a></h2>
            ${post.description}
            <hr>
        </c:forEach>
    </jsp:body>
</t:page>