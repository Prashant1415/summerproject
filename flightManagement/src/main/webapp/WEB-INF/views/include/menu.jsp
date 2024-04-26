<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <s:url var="menu_css" value="/static/css/menu.css"/>
    <link href="${menu_css}" rel="stylesheet" type="text/css">
</head>
<s:url var="url_logout" value="/logout"/>
    <s:url var="url_reg" value="/regx"/>
    <s:url var="url_home" value="/home"/>
    <s:url var="url_bookFlight" value="/bookFlight"/>
<body>
    <header class="header"> 
        <a href="#" class="logo">Your Flight System</a>
        <nav class="navbar">
            <c:choose>
                <c:when test="${empty sessionScope.userId}">
                    <a href="#">Home</a>
                    <a href="">Login</a>
                    <a href="${ url_reg}">Register</a>
                    <a href="#">About</a>
                </c:when>
                <c:when test="${sessionScope.role == 1}">
                    <a href="#">Home</a>
                    <a href="">User List</a>
                    <a href="#">Flight List</a>
                    <a href="${url_logout}">Logout</a>
                </c:when>
                <c:when test="${sessionScope.role == 2}">
                    <a href="#">Home</a>
                    <a href="">Book Flight</a>
                    <a href="#">My Flights</a>
                    <a href="${url_logout}">Logout</a>
                </c:when>
            </c:choose>
        </nav>
    </header>
</body>
</html>
