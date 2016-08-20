<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:page>
    <jsp:attribute name="title">Home</jsp:attribute>
    <jsp:body>
        <a href="/about">About Us</a>
        <a href="/blog">Read the Blog!</a>
        <h1>Hello, my friends!</h1>
        <p>This message comes from controller:</p>
        <p style="font-size: 24px;">${message}</p>
        <p>Spring version is: <strong>${springVersion}</strong></p>
    </jsp:body>
</t:page>