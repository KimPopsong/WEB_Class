<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	Connection conn = null;
	Statement stmt = null;

	String sql = "INSERT INTO student (num,name) VALUES (333,'임꺽정')";

	String driver = "oracle.jdbc.driver.OracleDriver"; //드라이버 이름 설정
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";

	try {
		Class.forName(driver); //드라이버 이름으로 드라이버를 로드
		conn = DriverManager.getConnection(url, "kds527", "pass123");
		stmt = conn.createStatement();
		int result = stmt.executeUpdate(sql);
		//  String sql="INSERT INTO student (num,name) VALUES (333,'임꺽정')";
		// 실행되고 실행결과를 int형으로 저장
		if (result != 0) {
			out.println("<h3>레코드가 등록되었습니다.</h3>");
		}
	} catch (Exception e) {
		out.println("<h3>레코드 등록에 실패하였습니다.</h3>");
		e.printStackTrace();
	}
%>