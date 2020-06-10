<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%
	request.setCharacterEncoding("euc-kr");
%>

<jsp:useBean id="Join" class="Join.MemberBean2" scope="application" />
<jsp:setProperty name="Join" property="*" />

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>ID</td>
			<td><jsp:getProperty name="Join" property="id" /></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><jsp:getProperty name="Join" property="pass" /></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><jsp:getProperty name="Join" property="name" /></td>
		</tr>
		<tr>
			<td>Gender</td>
			<td><jsp:getProperty name="Join" property="sex" /></td>
		</tr>
	</table>
</body>
</html>