<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
	int i = 0;
	String sql = "SELECT * FROM student";
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	try {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, "kds527", "pass123");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
%>
<body>
	<center>
		<h4>[ 학생 검색 ]</h4>
		<table border="1" cellspacing="1">
			<tr>
				<th>NO</th>
				<th>학번</th>
				<th>이름</th>
			</tr>
			<%
				// 6단계: 모든 행  반복 처리
					while (rs.next()) {
			%><tr>
				<td><%=++i%></td>
				<td><%=rs.getInt(1)%></td>
				<td><%=rs.getString(2)%></td>
			</tr>
			<%
				}
			%>
		</table>
		<%
			// 7단계: 사용한 자원 해제
				rs.close();
				stmt.close();
				con.close();
		%>
		<h4>DB에서 정상적으로 검색 되었습니다!!!</h4>
		<%
			} catch (SQLException e) {
		%>
		<h4>에러가 발생 했군요. 다시 확인해 보세요!!!</h4>
		<%
			}
		%>
	</center>
</body>