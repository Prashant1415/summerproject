<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<s:url var="url_css"  value="/static/css/regx.css"/>
<link href="${url_css}" rel="stylesheet" type="text/css">

 <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>


</head>
<s:url var="url_img" value="/static/img/img.jpg"/>  
<body background="${url_img }">


<div >
<jsp:include page="include/menu.jsp"></jsp:include>
</div> 


<c:if test="${err!=null }">
<p>${err}</p>
</c:if>



<c:if test="${param.act eq 'REG' }">
<p class="success"> User registered.Please login.</p>
</c:if>


<s:url var="url_login" value="/login"/>
	<f:form action="${url_login}" modelAttribute="command">
	<div class="box">
		<div class="container">
			<div class="top_header">
				<span>Have a account ?</span>
				<header>Login</header>
			</div>
			<div class="input-field">
			<f:input path="loginName"  class="input" placeholder="Username" />
			<i class="bx bx-user"></i>
			</div>

			<div class="input-field">
			<f:password path="password"  class="input" placeholder="password" />
			<i class="bx bx-lock-alt"></i>
			</div>
			<div class="input-field">
			<input type="submit" class="submit" value="Login" >
		
					</div>
			<div class="bottom">
				<div class="left">
				<input type="checkbox" id="check" >
				<label for="check"> Remember me</label>
				</div>
			
			</div>
		</div>
	</div>
	</f:form>



<div id="footer">
<jsp:include page="include/footer.jsp"></jsp:include>
</div>



</body>
</html>