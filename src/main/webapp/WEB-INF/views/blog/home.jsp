<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<t:page>
    <jsp:attribute name="title">Blog posts</jsp:attribute>
    <jsp:body>

        <div class="container">
            <div class="row">
                <div class="col-md-8">

                    <h1 class="page-header">
                        Simple blog
                        <small>Using Spring MVC and Hibernate</small>
                    </h1>

                    <c:forEach var="post" items="${posts}" varStatus="status">
                        <h2>
                            <a href="/blog/post/${post.id}">${post.title}</a>
                        </h2>
                        <p class="lead">
                            by <a href="#">${post.author.name}</a> in ${post.category.title}
                        </p>
                        <p><span class="glyphicon glyphicon-time"></span> Posted at <fm:formatDate value="${post.published}" pattern="dd.MM.YYYY HH:mm" /></p>
                        <hr>
                        <img class="img-responsive" src="http://placehold.it/900x300" alt="">
                        <hr>
                        <p>${post.description}</p>
                        <a class="btn btn-primary" href="/blog/post/${post.id}">
                            Read More <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </div>


            <h2></h2>
            ${post.description}
            <hr>

    </jsp:body>
</t:page>