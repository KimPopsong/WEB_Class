<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<%
	int in_num = Integer.parseInt(request.getParameter("num"));
	// 수정할 학번을 불러와야 하기 때문에 num 을 전달받음
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		Class.forName(driver); //드라이버 이름으로 드라이버를 로드
		conn = DriverManager.getConnection(url, "kds527", "pass123");
		pstmt = conn.prepareStatement("SELECT * FROM student WHERE num=?");
		// 전달받은 num 값에 해당하는 레코드 불러와서 수정하도록 함
		pstmt.setInt(1, in_num);
		rs = pstmt.executeQuery(); // select 문이므로 
		rs.next();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<form name="dbModify" action="DB_Modify_OK.jsp" method="post">
	<table border=1 width=300>
		<caption>수정하기</caption>
		<tr align=center>
			<td>번호 :</td>
			<td><input type="text" name="num" VALUE="<%=rs.getInt("num")%>"></td>
		</tr>
		<tr align=center>
			<td>이름 :</td>
			<td><input type="text" name="name"
				VALUE="<%=rs.getString("name")%>"></td>
		</tr>
		<!-- 수정하려면 폼에 미리  정보를 보여 주어야 한다. -->
		<tr align=center>
			<td colspan=2><input type="submit" value="수정하기">
	</table>
</form>