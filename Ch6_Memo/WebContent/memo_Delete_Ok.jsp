<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
	request.setCharacterEncoding("euc-kr");
	int num = Integer.parseInt(request.getParameter("num"));
	// 넘겨져 온 글 번호 변수에 저장
	String pass = request.getParameter("pass");
	// 넘겨져 온 비밀번호 변수에 저장
%>
<%
	String driver = "oracle.jdbc.driver.OracleDriver"; //드라이버 이름 설정
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Class.forName(driver); //드라이버 이름으로 드라이버를 로드   
	conn = DriverManager.getConnection(url, "kds527", "pass123");

	pstmt = conn.prepareStatement("SELECT * FROM memo_Test WHERE num=?");
	pstmt.setInt(1, num); // 글 번호가 같으면 불러 와라
	rs = pstmt.executeQuery();
	if (rs.next()) {
		if (pass.equals(rs.getString("pass"))) { // 글번호와 비밀번호가 맞으면  삭제 후 memo.jsp 로 감
			pstmt = conn.prepareStatement("DELETE FROM memo_Test WHERE num=?");
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			out.println("<script>");
			out.println("location.href='memo.jsp'");
			out.println("</script>");
		} else //  글번호와 비밀번호가 틀리면 바로  memo.jsp 로 감
		{
			out.println("<script>");
			out.println("location.href='memo.jsp'");
			out.println("</script>");
		}
	} else //  글번호와 비밀번호가 틀리면 바로  memo.jsp 로 감
	{
		out.println("<script>");
		out.println("location.href='memo.jsp'");
		out.println("</script>");
	}
%>