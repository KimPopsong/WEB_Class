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
		out.println("location.href='memberLogin.jsp'");
		out.println("</script>");
	}

	String info_id = request.getParameter("id");
	String driver = "oracle.jdbc.driver.OracleDriver"; //드라이버 이름 설정
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		Class.forName(driver); //드라이버 이름으로 드라이버를 로드
		conn = DriverManager.getConnection(url, "kds527", "pass123");
		pstmt = conn.prepareStatement("SELECT * FROM member WHERE id=?");
		pstmt.setString(1, info_id);
		rs = pstmt.executeQuery();
		rs.next();

	} catch (Exception e) {
		e.printStackTrace();
	}
%>

<body>
	<center>
		<table border=1 width=300>
			<caption>불량 회원 정보 상세 보기</caption>
			<tr align=center>
				<td>아이디 :</td>
				<td><%=rs.getString("id")%></td>
			</tr>
			<tr align=center>
				<td>비밀번호 :</td>
				<td><%=rs.getString("pass")%></td>
			</tr>
			<tr align=center>
				<td>이름 :</td>
				<td><%=rs.getString("name")%></td>
			</tr>
			<tr align=center>
				<td>나이 :</td>
				<td><%=rs.getString("age")%></td>
			</tr>

			<tr align=center>
				<td>성별 :</td>
				<td><%=rs.getString("gender")%></td>
			</tr>
			<tr align=center>
				<td>이메일 주소 :</td>
				<td><%=rs.getString("email")%></td>
			</tr>
			<tr align=center>
				<td colspan=2><a href="memberBadList.jsp"> 불량 회원 리스트로</a> <br>
					<a href="memberBack.jsp?id=<%=rs.getString("id")%>"> 정상회원으로
						등록하기 </a></td>
			</tr>
		</table>
	</center>
</body>