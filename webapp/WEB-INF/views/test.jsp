<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${msg}</title>
</head>
<body>
<h1>${msg}</h1>
<h2><spring:message code="welcome"/></h2>
<spring:message code="language" /> : 
<a href="?language=en"><spring:message code="lang_english"/></a> - <a href="?language=kh"><spring:message code="lang_khmer"/></a>
Locale: ${pageContext.response.locale}



</body>
</html>