<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Count Set</title>
</head>
<body>
	<h4>방문자수 설정하기 화면</h4>
	<%!int count;%>
	<!-- 변수 선언 -->
	<%
		count++;
		application.setAttribute("countValue", count);
		/* application scope 속성 값 설정 - 브라우저 종료해도 값 유지 */
	%>
	현재 방문자수 :
	<%=count%>
	<!--브라우저에 변수 값 출력 -->
</body>
</html>