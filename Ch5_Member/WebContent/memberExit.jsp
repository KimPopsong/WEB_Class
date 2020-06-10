<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
	String id = null;
	if ((session.getAttribute("id") == null) || (!((String) session.getAttribute("id")).equals("admin"))) {
		// 로그인 하지 않았거나(세션값이 없으면)  또는 관리자가 아니면 
		// memberLogin.jsp 로 가라.  
		// 바로 memberList.jsp를 실행하면 memberLogin.jsp 로 튕겨나감

		out.println("<script>");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	}
	String delete_id = request.getParameter("id");
	String driver = "oracle.jdbc.driver.OracleDriver"; //드라이버 이름 설정
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		Class.forName(driver); //드라이버 이름으로 드라이버를 로드
		conn = DriverManager.getConnection(url, "kds527", "pass123");
		pstmt = conn.prepareStatement("DELETE FROM member WHERE id=?");
		// 넘겨져 온 ID 와 같은것을 delete 함

		pstmt.setString(1, delete_id);
		pstmt.executeUpdate();
		out.println("<script>");
		out.println("location.href='memberList.jsp'");
		out.println("</script>");
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
