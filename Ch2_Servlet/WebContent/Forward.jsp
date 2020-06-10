<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Forward</title>
</head>
<body>
	<h3>포워드 액션 테스트</h3>
	<table>
		<form action="ForwardTest1.jsp" method="POST">
			<input type="hidden" name="forwardPage" value="ForwardTest2.jsp">
			<!-- forwardPage에 forwardTest2.jsp를 감추어서 보냄 -->
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td><input type="submit" value="전송"></td>
			</tr>
	</table>
	</form>

</body>
</html>