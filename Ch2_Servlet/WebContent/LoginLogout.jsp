<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LogOut</title>
</head>
<body>
<%
    session.invalidate();  // ���ǰ��� �����Ѵ�.
     response.sendRedirect("LoginForm.jsp");
     // �׸��� �α��� â���� �������Ѵ�.
%>

</body>
</html>