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
	String name = request.getParameter("irum");/* irum 에 저장된 값을 불어옴 */
	%>
	<b> <%=
	name
	%>
	</b>

</body>
</html>