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
		<caption>ȸ�� ���� �Է� ���</caption>

		<tr>
			<td>*���̵�</td>
			<td><%=request.getParameter("name")%></td>
		</tr>

		<tr>
			<td>*��й�ȣ</td>
			<td><%=request.getParameter("password")%></td>
		</tr>

	</table>

</body>
</html>