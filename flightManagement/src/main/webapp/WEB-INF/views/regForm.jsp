<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration form</title>
<s:url var="url_css"  value="/static/css/regx.css"/>
<link href="${url_css}" rel="stylesheet" type="text/css">

 <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<style type="text/css">
.error{
color:red;
}

</style>
</head>


 <s:url var="url_img" value="/static/img/img.jpg"/>  
<body background="${url_img }">
	<s:url var="reg_form" value="/regForm"/>
	<c:if test="${err!=null}">
	<p class="error"> ${err} </p>
	</c:if>
	

	<f:form action="${reg_form}" modelAttribute="command" method="post">
	<div class="box">
		<div class="container">
			<div class="top_header">
				<span>Have a account</span>
				<header>Registration</header>
			</div>
			<div class="input-field">
			<f:input path="name"  class="input" placeholder=" Name"  />
			
			 
			<f:errors path="name" cssClass="error"></f:errors>
			<i class="bx bx-user"></i>
			</div>
			
			<div class="input-field">
			<f:input path="loginName"  class="input" placeholder="loginName"  />
			<f:errors path="loginName" cssClass="error"></f:errors>
			<i class="bx bx-user"></i>
			</div>
			<div class="input-field">
			<f:input path="phone"  class="input" placeholder="Phone"  />
			<f:errors path="phone" cssClass="error"></f:errors>
			<i class="bx bx-phone"></i>
			</div>
			<div class="input-field">
			<f:input path="address"  class="input" placeholder="address" />
			<f:errors path="address" cssClass="error"></f:errors>
			<i class="bx bx-map"></i>
			</div>
			<div class="input-field">
			<f:input path="email"  class="input" placeholder="Email" />
			<f:errors path="email" cssClass="error"></f:errors>
			<i class="bx bx-envelope"></i>
			</div>
			<div class="input-field">
			<f:password path="password"  class="input" placeholder="password"   />
			<f:errors path="password" cssClass="error"></f:errors>
			<i class="bx bx-lock-alt"></i>
			</div>
			<div class="input-field">
			<input type="submit" class="submit" value="Register" >
		
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
</body>

</html>