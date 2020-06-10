<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	session.setMaxInactiveInterval(10); // 10초
%>
<body>
	<h4>세션 테스트</h4>
	isNew() :
	<%=session.isNew()%><br>
	<%-- 처음이면  true --%>
	처음 생성시간 :	<%=session.getCreationTime()%>
	<br> 마지막 접속 시간 :	<%=session.getLastAccessedTime()%>
	<br> 세션ID :	<%=session.getId()%>
	<br>
	<!-- 세션마다 다른 값 부여함 -->
</body>

