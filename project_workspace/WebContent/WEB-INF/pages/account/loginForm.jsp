<%@ page language="java" contentType="text/html; charset=ISO-8859-2"
    pageEncoding="ISO-8859-2"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:if test="${error == true}">
	<b class="error"><fmt:message key="errorLogin" /></b>
</c:if>
								
<form id="logingForm" method="post" action="<c:url value='login'/>" >
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	<table>
		<tbody>
			<tr>
				<td><fmt:message key="login" /></td>
				<td width="30 px">: </td>
				<td><input type="text" name="username" id="username" size="30" maxlength="40"  height="30px" /></td>
				<td width="30 px"></td>
			</tr>
			<tr>
				<td><fmt:message key="password" /></td>
				<td width="30 px">: </td>
				<td><input type="password" name="password" id="password" size="30" maxlength="32" height="30px" /></td>
				<td width="30 px"></td>
			</tr>
			<tr class="wide2">
				<td colspan="2"></td>
				<td><input id="loginButton" type="submit" value="Login"/></td>
				<td></td>
			</tr>
			<tr class="wide">
				<td colspan="2"> </td>
				<td><a href="#"><fmt:message key="newAccount"/> </a></td>
				<td></td>
			</tr>
			<tr class="wide">
				<td colspan="2"></td>
				<td><a href="#"><fmt:message key="remindPassword"/></a></td>
				<td></td>
			</tr>
		</tbody>
	</table>
</form>	
</body>
</html>