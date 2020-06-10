<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<body>
	<%
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		Connection conn = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "kds527", "pass123");
		ResultSet rs = null;
		PreparedStatement pstmt = conn.prepareStatement(
		"insert into QUIZ(Q_NUM, Q_QUESTION, Q_TYPE, Q_IMAGE,Q_EX1,Q_EX2,Q_EX3,Q_EX4,Q_ANSWER) values (?,?,?,?,?,?,?,?,?)");

		Statement stmt = conn.createStatement();
		String strSQL = "SELECT Q_NUM FROM QUIZ";
		rs = stmt.executeQuery(strSQL);

		int num = 0;

		while (rs.next()) {
			num = rs.getInt("Q_NUM");
		}
		num++;

		String t_exam = request.getParameter("textexam");
		String i_exam = request.getParameter("imageexam");
		String type = request.getParameter("type");
		String bogi1 = request.getParameter("bogi1");
		String bogi2 = request.getParameter("bogi2");
		String bogi3 = request.getParameter("bogi3");
		String bogi4 = request.getParameter("bogi4");
		String dap = request.getParameter("dap");
		String Q_image = null;

		pstmt.setInt(1, num);
		pstmt.setString(2, t_exam);
		pstmt.setString(3, type);
		pstmt.setString(4, i_exam);
		pstmt.setString(5, bogi1);
		pstmt.setString(6, bogi2);
		pstmt.setString(7, bogi3);
		pstmt.setString(8, bogi4);
		pstmt.setString(9, dap);

		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
	%>

	<a href="adminPage.jsp">추가 완료</a>
</body>
</html>