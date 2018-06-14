<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="theLocale" 
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}" 
scope="session" />

<fmt:requestEncoding value="UTF-8" />

<fmt:setLocale value="${theLocale}" /> 

<fmt:setBundle basename="jsp.i18n.resources.mylabels" />

<html>

<body>

	<a href="i18n-messages-test.jsp?theLocale=en_US"> English (US)</a>
	|
	<a href="i18n-messages-test.jsp?theLocale=es_ES"> Spanish (ES)</a>
	|
	<a href="i18n-messages-test.jsp?theLocale=de_DE"> German (DE)</a>
	|
	<a href="i18n-messages-test.jsp?theLocale=ro_RO"> Romanian (RO)</a>
		
	<hr>

	<fmt:message key="label.greeting" /> <br/>
	
	<fmt:message key="label.firstname" /> <i>Joe</i> <br/>
	
	<fmt:message key="label.lastname" /> <i>Black</i> <br/>
	
	<fmt:message key="label.welcome" /> <br/> 
	
	<hr>
	
	Selected locale: ${theLocale}
		
</body>

</html>