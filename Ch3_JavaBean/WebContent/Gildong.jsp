<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<jsp:useBean id="gd" class="Join.GilDong" scope="page"/>

<body>
	<b>�ڹٺ� ��� ����</b>
	<h4>
	<jsp:setProperty name= "gd" property="name" param="name"/>
		<%=gd.getName()%>
	</h4>
</body>
