<%@ tag body-content="scriptless" dynamic-attributes="dynamicAttributes" trimDirectiveWhitespaces="true" %>
<%@ attribute name="htmlTitle" type="java.lang.String" rtexprvalue="true" required="true" %>
<%@ include file="/WEB-INF/jsp/base.jspf" %>
<!DOCTYPE html>
<html>
<head>
    <title><c:out value="${fn:trim(htmlTitle)}" /> MajorPMS</title>
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/css/main.css" />">
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="<c:url value="/js/bootstrap.min.js" />"></script>

</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a href="<c:url value="/index" />" class="navbar-brand">MajorPMS</a>
                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse" id="navbar-main">
                <ul class="nav navbar-nav">

                    <li>
                        <a href="<c:url value="/info" />">Info</a>
                    </li>
                    <li>
                        <a href="<c:url value="/info" />">Purchase</a>
                    </li>
                    <li>
                        <a href="<c:url value="/faq" />">FAQ</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div>
        <div class="container">
            <jsp:doBody />
        </div>
    </div>

</body>
</html>
