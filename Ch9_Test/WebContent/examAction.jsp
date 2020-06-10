<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
	request.setCharacterEncoding("euc-kr");

	int score = 0;
	String choice;
	String answer;
	int size = Integer.parseInt(request.getParameter("examSize"));
	for (int i = 0; i < size; i++) {
		choice = request.getParameter(("bogi" + String.valueOf(i)));
		answer = request.getParameter("dap" + String.valueOf(i));
		if (answer.equals(choice))
			score++;
	}
%>

Á¡¼ö´Â <%= score %><br>