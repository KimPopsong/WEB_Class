<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
	String id = null;
	if ((session.getAttribute("id") == null) || (!((String) session.getAttribute("id")).equals("admin"))) {
		// 로그인 하지 않았거나(세션값이 없으면) 관리자가 아니면 
		// memberLogin.jsp 로 가라.  
		// 바로 memberList.jsp를 실행하면 memberLogin.jsp 로 튕겨나감

		out.println("<script>");
		out.println("location.href='lmemberLginForm.jsp'");
		out.println("</script>");
	}

	//세션값이 있고, 세션 아디가 admin 이면 아래 수행
	String delete_id = request.getParameter("id");
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	Class.forName(driver);
	conn = DriverManager.getConnection(url, "kds527", "pass123");
	pstmt = conn.prepareStatement("Update member Set status=1 WHERE id=?");
	pstmt.setString(1, delete_id);
	pstmt.executeUpdate();
	out.println("<script>");
	out.println("location.href='memberList.jsp'");
	//불량회원으로 등록하고 list 페이지 다시 호출하면 정상회원만 출력

	out.println("</script>");
%>
