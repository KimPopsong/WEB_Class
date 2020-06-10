<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<html>
<head>
<title>회원관리 시스템 로그인 페이지</title>
</head>

<script language=javascript>
	function valid_check() {
		if (document.joinform.id.value == "") {
			// joinform 은 form name="joinform" 임
			// 다른 파일에서 같은 이름 사용하면 에러 발생-에러 고치기 어려움
			alert("학번을 입력하여 주시기 바랍니다.");
			document.joinform.id.focus();
			return false;
		}

		for (var i = 0; i < document.joinform.age.value.length; i++) { /* charAt(i) : 아스카 코드 값 */
			if (document.joinform.age.value.charAt(i) < "0"
					|| document.joinform.age.value.charAt(i) > "9")
			/* 입력된 나이가 0보다 작거나 9보다 크면 , 즉 0에서 9사이만 입력 받겠다. */
			{
				alert("학번은 숫자만 가능합니다. ");
				document.joinform.age.focus();
				return;
			}
		}
		document.joinform.submit();
	}

	function check_id() {
		var JSPName = "id_check.jsp";
		browsing_window = window.open(JSPName, "_idcheck",
				"height=220,width=420");
		browsing_window.focus();
		// 실행된 윈도우 창을 맨 앞으로 표시 
	}
</script>

<body>
	<form name="loginform" action="login_OK.jsp" method="post">
		<center>
			<table border=1>
				<tr>
					<td>학번</td>
					<td><input type="text" name="id" readonly /></td>
					<input TYPE=button VALUE="학번 검사" onclick="check_id()"
						onmouseover="this.style.cursor='hand';">
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td colspan="2" align=center><input type="submit" value="로그인">
					</td>
				</tr>
				<tr>
				<td colspan = 2 align=center><a href = "list.jsp">점수 보기</a>
				</td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>
