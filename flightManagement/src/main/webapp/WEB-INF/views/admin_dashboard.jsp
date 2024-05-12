<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<s:url var="url_css"  value="/static/css/user.css"/>
<link href="" rel="stylesheet" type="text/css">
</head>

<s:url var="url_img" value="/static/img/img.jpg"/>  
<body background="">



 <jsp:include page="include/menu.jsp"></jsp:include>

<h1>Admin Dashboard</h1>


<footer class="footer">
    <jsp:include page="include/footer.jsp"></jsp:include>
          </footer>
</body>
</html>