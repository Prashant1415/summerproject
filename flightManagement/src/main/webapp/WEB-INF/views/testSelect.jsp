<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<s:url var="url_select" value="/show"/>
<f:form action="${url_select }" modelAttribute="flightClass">
<p>Select travelers:
<f:select path="traveler"  items="${traveler }"/>
<button>submit</button>
</p>
</f:form>

</body>
</html>