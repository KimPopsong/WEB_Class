<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
	Connection conn = null;
	String sql = "INSERT INTO student (num,name) VALUES (?,?)";
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "kds527", "pass123");
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, 227); // 학번 처리 - 나중에 변수로 처리
		pstmt.setString(2, "yyttnn"); // 이름 처리 - 나중에 변수로 처리

		if (pstmt.executeUpdate() != 0) {
			out.println("<h3> 레코드를 등록하였습니다.</h3>");
		}
	} catch (Exception e) {
		out.println("<h3> 등록에 실패.</h3>");
		e.printStackTrace();
	}
%>