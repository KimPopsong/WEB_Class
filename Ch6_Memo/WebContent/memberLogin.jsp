<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<html>
<body>
	<form name="loginform" action="login_OK.jsp" method="post">
		<center>
			<table border=1>
				<tr>
					<td colspan="2" align=center><b><font size=5>로그인
								페이지</font></b></td>
				</tr>
				<tr>
					<td>아이디 :</td>
					<td><input type="text" name="id" /></td>
				</tr>
				<tr>
					<td>비밀번호 :</td>
					<td><input type="password" name="pass" /></td>
				</tr>
				<tr>
					<td colspan="2" align=center>
						<!-- <a href="javascript:loginform.submit()">로그인</a>&nbsp;&nbsp; -->
						<input type="submit" value="로그인"> &nbsp;&nbsp; <a
						href="memberJoin.jsp">회원가입</a>
					</td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>
