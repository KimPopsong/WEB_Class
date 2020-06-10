<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("euc-kr");
	int num1 = Integer.parseInt(request.getParameter("num"));
	String name1 = request.getParameter("name");
	// 수정폼에서 수정되어 넘어온  데이터
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	Class.forName(driver); //드라이버 이름으로 드라이버를 로드
	conn = DriverManager.getConnection(url, "kds527", "pass123");
	// String SQL="update student set name = ? ";  // 이름 전체가 수정 됨 - 이렇게하면 큰일 남.
	String SQL = "update student set name = ? where num = ? ";
	pstmt = conn.prepareStatement(SQL);
	// name 과 num  순서에 주의 – Table의 필드 순서가 아님
	pstmt.setString(1, name1); // name
	pstmt.setInt(2, num1); // num
	int result = pstmt.executeUpdate(); // select 가 아니므로
%>

<a href="Statement_Select.jsp "> Go To List </a>