<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>
<body>
	<%
		String id = null;
		if ((session.getAttribute("id") == null) || (!((String) session.getAttribute("id")).equals("admin"))) {
			// 로그인 하지 않았거나(세션값이 없으면)  또는 관리자가 아니면 
			// memberLogin.jsp 로 가라.  
			// 바로 memberList.jsp를 실행하면 memberLogin.jsp 로 튕겨나감

			out.println("<script>");
			out.println("location.href=‘memberLogin.jsp'");
			out.println("</script>");
		}

		String delete_id = request.getParameter("id");
		String driver = "oracle.jdbc.driver.OracleDriver"; //드라이버 이름 설정
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Class.forName(driver); //드라이버 이름으로 드라이버를 로드
		conn = DriverManager.getConnection(url, "kds527", "pass123");
	%>
	<center>
		<br> <br>
		<h3>
			<!-- 아이디 를 출력하고 -->
			<%=request.getParameter("id")%>
			님을 불량회원으로 등록하시겠습니까 ? &nbsp; <br> <br>

			<!--  불량회원등록할 때 memberBadOk.jsp갈때  id를 딸려서 보냄 -->
			<a href="memberBadOk.jsp?id=<%=delete_id%>">Yes</a> &nbsp; &nbsp; <a
				href="memberList.jsp">No</a>
		</h3>
	</center>
</body>
