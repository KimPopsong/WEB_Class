<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Register Data OK</title>
</head>
<body>
	<table border = "1" width = "400">
		<caption>회원 가입 입력 양식</caption>

		<tr>
			<td>*아이디</td>
			<td><%=request.getParameter("name")%></td>
		</tr>

		<tr>
			<td>*비밀번호</td>
			<td><%=request.getParameter("password")%></td>
		</tr>

	</table>

</body>
</html>