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

	<form:form method="post" action="addUser">
		<table>
			<tr>
				<td>Login </td>
				<td>: </td>
				<td>
					<input type="text" name="username" id="username" />
				</td>
				<td>* </td>
			</tr>
			<tr>
				<td>E-mail </td>
				<td>: </td>
				<td>
					<input type="text" name="email" id="email" />
				</td>
				<td>* </td>
			</tr>
			<tr>
				<td>Has³o </td>
				<td>: </td>
				<td>
					<input type="password" name="password" id="password" />
				</td>
				<td>* </td>
			</tr>
			<tr>
				<td>Imiê </td>
				<td>: </td>
				<td>
					<input type="text" name="firstName" id="firstName" />
				</td>
				<td></td>
			</tr>
			<tr>
				<td>Nazwisko </td>
				<td>: </td>
				<td>
					<input type="text" name="lastName" id="lastName" />
				</td>
				<td></td>
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