<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>�α��� ���� ����</h4>
	<%
		String id = (String) session.getAttribute("userid");
		//  ���� �� �о� ��
		if (id == null) {
			response.sendRedirect("LoginForm.jsp");
			//  �α��� ���� �ʰ� �ٷ� �� ���� �����ϸ� 
			//  loginForm.jsp ���ϸ� ��� ȣ�� ��
		} else {
			// ���� �� �о� ��
			String pw = (String) session.getAttribute("passwd");
			String name = (String) session.getAttribute("username");
			out.print("����� �̸� ��: " + name + "<br>");
			out.print("����� ���̵�: " + id + "<br>");
			out.print("����� ��й�ȣ��: " + pw + "<br>");
			out.print("<a href='LoginLogout.jsp'>�α� �ƿ�</a>");
		}
	%>
</body>
</html>