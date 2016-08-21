<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<t:page>
    <jsp:attribute name="title">Home</jsp:attribute>
    <jsp:body>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <img src="<c:url value="resources/images/photo.jpg"/>" alt="Author photo" class="img-responsive img-thumbnail">
                </div>
                <div class="col-md-9">
                    <h1>Welcome to my site!</h1>
                    <p class="lead">I am the web developer and this is my first workflow with Spring MVC and Hibernate!</p>
                    <p>Many things I have done, but work in progress. I need more experience in Java and especially Spring!</p>
                    <p>For now <a href="/blog">the blog</a> is readable and <a href="/about">about page</a> is working too.</p>
                    <p>Send your thoughts to <a href="http://vk.com/ikhrome">VK page</a> or using <a
                            href="https://github.com/ikhrome/iklog">GitHub</a> issues on repository.</p>
                    <p class="lead">May the Force be with you!</p>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="page-header">
                        <h2>Latest in blog</h2>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <a href="/blog">
                                <h3>Welcome to my thoughts!</h3>
                            </a>
                            <p>Some cool thoughts will happen!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:page>