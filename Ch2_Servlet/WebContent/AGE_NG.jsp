<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>

	<%!// 선언문
	int age;%>

	<%
		String str = request.getParameter("age");
		age = Integer.parseInt(str);
	%>
	<%=age%>
	세는 미성년자 입니다. 
	<br>주류구매가 불가능 합니다.

</body>