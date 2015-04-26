<%@ page language="java" contentType="text/html; charset=ISO-8859-2"
    pageEncoding="ISO-8859-2"%>
<%@ include file="/WEB-INF/pages/include.jsp" %>
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
						 	<%@ include file="/WEB-INF/pages/info.jsp"%>
						</div>
					</div>
					
					<div id="register">
						<a href="#" data-toggle="dropdown" onclick="enableMenuForms()">
							<img src="<c:url value="/img/add.png"/>"/>
						</a>
						<div class="dropdown-menu pull-right drops" style="direction: ltr">
							<%@ include file="/WEB-INF/pages/account/addUser.jsp"%>
						</div>
					</div>
					
					<div id="login">
						<a href="#" data-toggle="dropdown" onclick="enableMenuForms()">
						<img src="<c:url value="/img/login.png"/>"/></a>
						<div class="dropdown-menu pull-right drops">
							<div id="logging">
								<%@ include file="/WEB-INF/pages/account/loginForm.jsp"%>
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
					<sec:authorize access="hasRole('ROLE_USER')">
						<a href="#"><img src="<c:url value="/img/konto.png"/>"/></a>
					</sec:authorize>
					<a href="#"><img src="<c:url value="/img/onas.png"/>"/></a>
				</div>
			</div>
			
			<div class="row">
				<div class="col-xs-12">
					Tu bêdzie g³ówna czê¶æ aplikacji.
				</div>
			</div>
			
		</div>
	</body>
</html>