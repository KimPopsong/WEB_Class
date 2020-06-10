<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Count Get</title>
</head>
<body>

	<h4>방문자수 조회하기 화면</h4>
	<%
		int count = (Integer) application.getAttribute("countValue");
		/* setAttribute 로 저장한 countValue 값을  */
		/*  application.getAttribute() 메서드로 속성값 불러옴  */
	%>
	현재까지 총 방문자수:
	<%=count%>

</body>
</html>