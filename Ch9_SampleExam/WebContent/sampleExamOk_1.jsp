<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int score = 0;

		String dap1 = request.getParameter("bogi1");

		if (dap1.equals("2"))
			score++;
	%>

	������
	<%=score%><br>
</body>
</html>