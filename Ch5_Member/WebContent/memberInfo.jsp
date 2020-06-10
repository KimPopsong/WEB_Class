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

	// 세션값이 null 이 아니고, 세션값이 admin 이면 아래 수행
	String info_id = request.getParameter("id");
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "kds527", "pass123");
		// 세션 아이디 하나의 정보 를 불러온다
		pstmt = conn.prepareStatement("SELECT * FROM member WHERE id=?");
		pstmt.setString(1, info_id);

		rs = pstmt.executeQuery();
		rs.next();
		// rs 에는 하나의 데이터가 저장되며 아래에서 출력함
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

<html>
<head>
<title>회원관리 시스템 관리자모드(회원 정보 보기)</title>
</head>
<body>
	<center>
		<table border=1 width=300>
			<caption>회원 정보 상세 보기</caption>
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
				<td colspan=2><a href="memberList.jsp">리스트로</a> &nbsp; &nbsp; <%-- - <a href="memberBack.jsp?id=<%=rs.getString("id") %>">
				정상회원으로 등록하기			</a>	  --%></td>
			</tr>
		</table>
	</center>
</body>
</html>