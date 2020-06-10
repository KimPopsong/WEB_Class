<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Input Form OK</title>
</head>
<body>
	<h4>Request 처리 페이지입니다.</h4>
	<table border="1" width="400">
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("name")%></td>
		</tr>
		
		<tr>
			<td>성별</td>
			<td><%=request.getParameter("gender")%></td>
		</tr>
		
		<tr>
			<td>취미</td>
			<td>
				<%
					String[] likes = request.getParameterValues("likes");//배열로 처리
					for (int i = 0; i < likes.length; i++) 
					{
				%> 
				<%=
					likes[i]
				%> 
				&nbsp;&nbsp; 
				<%
					}
 				%>
			</td>
		</tr>
		
		<tr>
			<td>직업</td>
			<td><%=request.getParameter("job")%></td>
		</tr>

		<tr>
			<td>메일수신여부</td>
			<td><%=request.getParameter("mail_yn")%></td>
		</tr>

		<tr>
			<td>자기소개</td>
			<td><%=request.getParameter("intro")%></td>
		</tr>

	</table>
</body>
</html>