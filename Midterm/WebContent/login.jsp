<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<html>
<head>
<title>ȸ������ �ý��� �α��� ������</title>
</head>

<script language=javascript>
	function valid_check() {
		if (document.joinform.id.value == "") {
			// joinform �� form name="joinform" ��
			// �ٸ� ���Ͽ��� ���� �̸� ����ϸ� ���� �߻�-���� ��ġ�� �����
			alert("�й��� �Է��Ͽ� �ֽñ� �ٶ��ϴ�.");
			document.joinform.id.focus();
			return false;
		}

		for (var i = 0; i < document.joinform.age.value.length; i++) { /* charAt(i) : �ƽ�ī �ڵ� �� */
			if (document.joinform.age.value.charAt(i) < "0"
					|| document.joinform.age.value.charAt(i) > "9")
			/* �Էµ� ���̰� 0���� �۰ų� 9���� ũ�� , �� 0���� 9���̸� �Է� �ްڴ�. */
			{
				alert("�й��� ���ڸ� �����մϴ�. ");
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
		// ����� ������ â�� �� ������ ǥ�� 
	}
</script>

<body>
	<form name="loginform" action="login_OK.jsp" method="post">
		<center>
			<table border=1>
				<tr>
					<td>�й�</td>
					<td><input type="text" name="id" readonly /></td>
					<input TYPE=button VALUE="�й� �˻�" onclick="check_id()"
						onmouseover="this.style.cursor='hand';">
				</tr>
				<tr>
					<td>�̸�</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td colspan="2" align=center><input type="submit" value="�α���">
					</td>
				</tr>
				<tr>
				<td colspan = 2 align=center><a href = "list.jsp">���� ����</a>
				</td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>
