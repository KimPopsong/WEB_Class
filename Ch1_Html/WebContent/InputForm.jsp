<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Input Form</title>
</head>
<body>
	<h4>--Request Form--</h4>

	<form action="InputForm_OK.jsp" method="post">
		<table border="1">
			<tr>
				<td width="35">이름</td>
				<td width="170"><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>남자 <input type="radio" name="gender" value=남자> 여자 <input
					type="radio" name="gender" value=여자>
				</td>
			</tr>
			<tr>
				<td>취미</td>
				<td>독서<input type="checkbox" name="likes" value="독서">
					게임<input type="checkbox" name="likes" value="게임"> TV시청<input
					type="checkbox" name="likes" value="TV시청"> 축구<input
					type="checkbox" name="likes" value="축구"> 기 타<input
					type="checkbox" name="likes" value="기타">
				</td>
			</tr>

			<tr>
				<td>직업</td>
				<td><SELECT NAME="job">
						<OPTION VALUE="">==직업을 선택하세요==</OPTION>
						<OPTION VALUE="학생">학생</OPTION>
						<OPTION VALUE="회사원">회사원</OPTION>
						<OPTION VALUE="군인">군인</OPTION>
						<OPTION VALUE="기타">기타</OPTION>
				</SELECT></td>
			</tr>
			<tr>
				<td>메일 수신여부</td>
				<td>Yes<INPUT TYPE="checkbox" Name="mail_yn" VALUE="Y">
					&nbsp; No <INPUT TYPE="checkbox" Name="mail_yn" VALUE="N">
				</td>
			</tr>
			<tr>
				<td>자기소개</td>
				<td><TEXTAREA NAME="intro" ROWS=5 COLS=45></TEXTAREA></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="전송 "></td>
			</tr>
		</table>
	</form>
</body>
</html>