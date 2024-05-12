<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="s" %> 	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<form action="<s:url value="/dataSearch"/> " method="post" >

<input type="text" name="freeText" >

<button>click</button>
</form>

</body>
</html>