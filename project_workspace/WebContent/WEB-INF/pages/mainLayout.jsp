<%@ page language="java" contentType="text/html; charset=ISO-8859-2"
    pageEncoding="ISO-8859-2"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page import="java.lang.String" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	 	<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet">
		<link href="<c:url value="/css/main.css" />" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>wybornie.pl</title>
	</head>
	
	<body>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/script.js"></script>
		
		<div class="container">
			<div class="row banner">
				<div id="logo" class="col-xs-4 col-lg-2">
					<a href="#" data-toggle="dropdown"><img src="<c:url value="/img/wybornie.png"/>"/></a> <br/>
				</div>
				<div class="col-xs-1 col-lg-6"></div>
				<div id="navbar" class="col-xs-7 col-lg-4" align="right">
				
					<div id="help">
						<a href="#" data-toggle="dropdown"><img src="<c:url value="/img/help.png"/>"/></a>
						<div class="dropdown-menu pull-right drops">
						 siema
						</div>
					</div>
					
					<div id="register">
						<a href="#"><img src="<c:url value="/img/add.png"/>"/></a>
					</div>
					
					<div id="login">
						<a href="#" data-toggle="dropdown" onclick="enableMenuForms()">
						<img src="<c:url value="/img/login.png"/>"/></a>
						<div class="dropdown-menu pull-right drops">
							
							<div id="logging">
								<c:if test="${error == true}">
									<b class="error">Invalid login or password.</b>
								</c:if>
								
								<form method="post" action="<c:url value='login'/>" >
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								<table>
								<tbody>
								<tr>
								<td>Login:</td>
								<td><input type="text" name="username" id="username" size="30" maxlength="40"  /></td>
								</tr>
								<tr>
								<td>Password:</td>
								<td><input type="password" name="password" id="password" size="30" maxlength="32" /></td>
								</tr>
								<tr>
								<td></td>
								<td><input type="submit" value="Login" /></td>
								</tr>
								</tbody>
								</table>
								</form>	
							</div>
						</div>
					</div>
				</div>	
			</div>
			
			<div class="row">
				<div class="col-xs-12 menue">
					<a href="#"><img src="<c:url value="/img/przepisy.png"/>"/></a>
					<a href="search.html"><img src="<c:url value="/img/wyszukaj.png"/>"/></a>
					<a href="#"><img src="<c:url value="/img/przelicznik.png"/>"/></a>
					<a href="#"><img src="<c:url value="/img/poczytaj.png"/>"/></a>
					<%
						if (request.getAttribute("logged") != null && request.getAttribute("logged").equals("success")) {
					%>
						<a href="#"><img src="<c:url value="/img/konto.png"/>"/></a>
					<% } %>
	
	
					<a href="#"><img src="<c:url value="/img/onas.png"/>"/></a>
					<!-- jest pomysl na oddzielenie menu tak jak to wczesniej zrobilam i w prawej czesci info dla zalogowanych osob -->
				</div>
			</div>
			
			<fmt:message key="hellou" />
		
<!-- 				<p>This is Home page. It's available for all users.<br/> -->
<!-- 				</p> -->
<%-- 				<c:url var="logoutUrl" value="/logout"/> --%>
<%-- 				<form action="${logoutUrl}" method="post"> --%>
<!-- 			  		<input type="submit" value="Log out" /> -->
<%-- 			  		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> --%>
<!-- 				</form> -->
		</div>
	</body>
</html>