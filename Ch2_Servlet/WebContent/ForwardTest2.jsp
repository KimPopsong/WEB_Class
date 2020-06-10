<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Forward Test 2</title>
</head>
<body>
<h4>포워드 된 페이지(ForwardTest2.jsp)</h4>
<table>
<tr><td>이름</td><td> <%=request.getParameter("name") %></td>	</tr>
<tr><td>나이</td><td> <%=request.getParameter("age") %></td>	</tr>
<tr><td>주소</td><td> <%=request.getParameter("address") %></td></tr>
<tr><td>전화번호</td><td> <%=request.getParameter("tel") %></td>	</tr>
</table>

</body>
</html>