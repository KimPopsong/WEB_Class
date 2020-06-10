<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<%!// 선언문 
	int age;%>

	<%
		String str = request.getParameter("age");
		age = Integer.parseInt(str); // 형변환
		
		if (age >= 20) 
		{
			response.sendRedirect("AGE_Pass.jsp?age=" + age);
		} 
		
		else 
		{
			response.sendRedirect("AGE_NG.jsp?age=" + age);
		}
	%>
</body>