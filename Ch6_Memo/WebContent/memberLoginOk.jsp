<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>

<%@ page import="javax.naming.*"%>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String driver = "oracle.jdbc.driver.OracleDriver"; //드라이버 이름 설정
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	Class.forName(driver); //드라이버 이름으로 드라이버를 로드
	conn = DriverManager.getConnection(url, "kds527", "pass123");
	pstmt = conn.prepareStatement("SELECT * FROM member WHERE id=?");
	// 폼에서 입력한 id 와 DB 의 아디가 같으면 불러와서
	pstmt.setString(1, id);
	rs = pstmt.executeQuery(); // 불러온 레코드를 rs 에 저장
	if (rs.next()) {
		if (pass.equals(rs.getString("pass"))) {
			// 폼에서 입력한 패스와 DB 에서 불러온 패스가 같으면
			session.setAttribute("id", id); // 아디를 세션값으로 저장
			session.setAttribute("pass", pass);
			out.println("<script>");
			out.println("location.href='memo.jsp'"); // 정상 로그인이면
			out.println("</script>");
		}

	}
	// 패스가 다르면 다시 로그인 창으로 유도
	out.println("<script>");
	out.println("location.href='memberLogin.jsp'");
	out.println("</script>");
	//db오류
	//id 불일치
	//pass 불일치
%>

