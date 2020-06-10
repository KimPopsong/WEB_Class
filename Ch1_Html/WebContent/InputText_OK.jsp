<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!-- post방식일 때 한글처리 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Input Text OK</title>
</head>
<body>
	<%
		String id = request.getParameter("userid");
		//out.print("전송되어 온 ID 는 : ");
		//out.print(id);	
	%>
	<%="넘겨져 온 아이디는 : "%>
	<%=id%>
</body>
</html>