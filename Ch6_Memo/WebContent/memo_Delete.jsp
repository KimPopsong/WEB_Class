<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<%@ page import="javax.naming.*"%>
<%
	request.setCharacterEncoding("euc-kr");

	String num = request.getParameter("num");
	// 넘겨져 온 데이터를 받은 후  아래에서 폼에 표시해 줌
%><form action="memo_Delete_Ok.jsp" method="post">
	<table border=1>
		<tr>
			<td>글번호</td>
			<td><%=num%><input type="hidden" name="num" value="<%=num%>">
			</td>
		</tr>

		<tr>
			<td>비밀번호 입력</td>
			<td><input type="password" name="pass"></td>
		</tr>

		<tr>
			<td align="center" colspan="2"><input type="submit" value="확인"></td>
		</tr>

	</table>
</form>