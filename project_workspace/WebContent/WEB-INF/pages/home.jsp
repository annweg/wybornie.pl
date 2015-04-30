<%@ page language="java" contentType="text/html; charset=ISO-8859-2"
    pageEncoding="ISO-8859-2"%>
<%@ include file="/WEB-INF/pages/include.jsp" %>

<%@ include file="/WEB-INF/pages/mainLayout.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	 	<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet">
		<link href="<c:url value="/css/main.css" />" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>wybornie.pl</title>
	</head>
	
	<body>
		<%
			if (request.getParameter("user") != null && request.getParameter("user").equals("true")) {
		%>	
			<script>
				var addingUser = document.getElementById('addUser');
				addingUser.click();
			</script>
		<%
			} 
		%>
		

	</body>
</html>