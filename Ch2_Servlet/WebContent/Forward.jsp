<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Forward</title>
</head>
<body>
	<h3>������ �׼� �׽�Ʈ</h3>
	<table>
		<form action="ForwardTest1.jsp" method="POST">
			<input type="hidden" name="forwardPage" value="ForwardTest2.jsp">
			<!-- forwardPage�� forwardTest2.jsp�� ���߾ ���� -->
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td><input type="submit" value="����"></td>
			</tr>
	</table>
	</form>

</body>
</html>