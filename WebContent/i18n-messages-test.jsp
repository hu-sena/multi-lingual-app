<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- assign theLocale variable but if null, pull from request session based on browser -->
<c:set var="theLocale" 
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
scope="session" />

<!-- format the message based on theLocale + base file:en_US -->
<fmt:setLocale value="${theLocale}" />
<fmt:setBundle basename="i18n.resources.mylabels" />

<html>
<body>

<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>
<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>
<a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a>

<hr>
<fmt:message key="label.greeting"/><br/><br/>

<fmt:message key="label.firstname"/> <i>John</i><br/>
<fmt:message key="label.lastname"/> <i>Doe</i><br/><br/>

<fmt:message key="label.welcome"/><br/>

<hr>
Selected locale: ${theLocale}
</body>
</html>

