<%@ page language="java" contentType="text/html; charset=ISO-8859-2"
    pageEncoding="ISO-8859-2"%>
<%@ include file="/WEB-INF/pages/include.jsp" %>
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
				<td><input type="text" name="username" id="username" class="forms" size="30" maxlength="40"  height="30px" /></td>
				<td width="40 px"></td>
			</tr>
			<tr>
				<td><fmt:message key="password" /></td>
				<td width="30 px">: </td>
				<td><input type="password" name="password" id="password" class="forms" size="30" maxlength="32" height="30px" /></td>
				<td width="40 px"></td>
			</tr>
			<tr height="40 px">
				<td colspan="2"></td>
				<td><input id="loginButton" type="submit" value="Login"/></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="4">
					<hr style="width: 80%; border: solid 1px #e4e4dc">
				</td>
			</tr>
			<tr height="30 px">
				<td colspan="4"><a href="#"><fmt:message key="newAccount"/> </a></td>
			</tr>
			<tr height="30 px">
				<td colspan="4"><a href="#"><fmt:message key="remindPassword"/></a></td>
			</tr>
			<tr height="30 px">
				<td colspan="4"><a href="#"><fmt:message key="remindLogin"/></a></td>
			</tr>
		</tbody>
	</table>
</form>	

<sec:authorize access="hasRole('ROLE_USER')">
	<script>
		removeLoginForm();
	</script>
	
	<c:url var="logoutUrl" value="/logout"/>
	<div style="  width: 90%; margin-left: 5px;">
		<form action="${logoutUrl}" method="post">
			<input type="submit" value="<fmt:message key="logout"/>" id="loginButton" /> 
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	 	</form>
 	</div>
</sec:authorize>
</body>
</html>