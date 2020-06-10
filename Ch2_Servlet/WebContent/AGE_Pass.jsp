<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<%!// 선언문
	int age;%>

	<%
		String str = request.getParameter("age");
		age = Integer.parseInt(str); // 형변환
	%>
	<%=age%>
	세는  성인 입니다. 
	<br>주류 구매가 가능합니다.
</body>