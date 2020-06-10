<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="EUC-KR">
<title>Member Form</title>
</head>

<body>
	<form action="MemberCheck.jsp" method="post">
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><input type="radio" name="sex" value="1" checked>M
					<input type="radio" name="sex" value="2"> F</td>
			</tr>
			<tr>
				<td><input type="text" name="age" value="1"></td>
			</tr>
			<tr>
				<td><input type="text" name="email" value="abcd"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Send!"></td>
			</tr>
		</table>
	</form>
</body>
</html>