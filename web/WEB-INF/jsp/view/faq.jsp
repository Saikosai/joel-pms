<%@ include file="/WEB-INF/jsp/base.jspf" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<template:main htmlTitle="Homepage">
    <div class="container">
        <h2>MajorPMS FAQ</h2>

        <div>
            <p>Welcome to the FAQ page! View asked questions! See if your questions have been answered!
                Find answers to questions you haven't thought of!</p>
        </div>

        <div>
            <h2>Questions (<c:out value="${fn:length(questions)}" />)</h2>
            <hr />
            <c:choose>
                <c:when test="${fn:length(questions) gt 0}">
                    <c:forEach var="question" items="${questions}">
                        ${question}
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <p>No questions have been asked yet! Be the first to ask a question!</p>
                    <br />
                </c:otherwise>
            </c:choose>

            <button id="newQuestion" class="btn btn-info" data-toggle="modal" data-target="#questionModal">
                <span class="glyphicon glyphicon-plus"></span> New Question
            </button>
            <template:question-modal></template:question-modal>
        </div>
    </div>
</template:main>