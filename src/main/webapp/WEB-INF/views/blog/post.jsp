<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<t:page>
    <jsp:attribute name="title">${post.title}</jsp:attribute>
    <jsp:body>
        <h1>${post.title} posted by ${post.author.name} in ${post.category.title}</h1>
        <h3>Published at: <fm:formatDate value="${post.published}" pattern="dd.MM.YYYY HH:mm" /> </h3>
        ${fn:replace(post.content, "\\n", "<br />")}
    </jsp:body>
</t:page>