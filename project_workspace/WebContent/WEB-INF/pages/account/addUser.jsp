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

	<form:form method="POST" action="user" modelAttribute="user">
		<table>
			<tr>
				<td>Login </td>
				<td>: </td>
				<td>
					<input type="text" name="login" id="login"/>
				</td>
				<td>* </td>
				<td><form:errors path="login" cssClass="error" /></td>
			</tr>
			<tr>
				<td>E-mail </td>
				<td>: </td>
				<td>
					<form:input type="text" path="email" />
				</td>
				<td>* </td>
				<td><form:errors path="email" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Has³o </td>
				<td>: </td>
				<td>
					<input type="password" name="password" id="password" />
				</td>
				<td>* </td>
				<td><form:errors path="password" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td></td>
				<td>
					<input type="submit" value="Zapisz" />
					<input type="button" onclick="window.open('index.html', '_self')" value="<fmt:message key="Cancel"/>" />
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>