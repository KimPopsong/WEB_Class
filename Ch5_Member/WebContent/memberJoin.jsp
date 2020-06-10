<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<title>회원관리 시스템 회원가입 페이지</title>
</head>
<body>
	<form name="joinform" action=" memberJoinOk.jsp" method="post">
		<!-- 반드시 폼 이름 은 파일명과 같게 한다. -->
		<center>
			<table border=1>
				<tr>
					<td colspan="2" align=center><b><font size=5>회원가입
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
					<td>이름 :</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td>나이 :</td>
					<td><input type="text" name="age" maxlength=2 size=5 /></td>
				</tr>
				<tr>
					<td>성별 :</td>
					<td><input type="radio" name="gender" value="남" checked />남자
						<input type="radio" name="gender" value="여" />여자</td>
				</tr>
				<tr>
					<td>이메일 주소 :</td>
					<td><input type="text" name="email" size=30 /></td>
				</tr>
				<tr>
					<td colspan="2" align=center><input type="submit"
						value="회원가입하기"> &nbsp;&nbsp; <a
						href="javascript:joinform.reset()">다시작성</a></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>
