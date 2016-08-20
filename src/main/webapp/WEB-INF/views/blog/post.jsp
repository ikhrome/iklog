<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:page>
    <jsp:attribute name="title">${post.title}</jsp:attribute>
    <jsp:body>
        <h1>${post.title}</h1>
        ${post.content}
    </jsp:body>
</t:page>