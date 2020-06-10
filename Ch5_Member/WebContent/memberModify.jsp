<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>

<%@ page import="javax.naming.*"%>
<%
	String id = null;
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

<html>
<head>
<title>회원 정보 수정하기</title>
</head>
<body>
	<form name="modifyform" action="memberModifyOk.jsp" method="post">
		<center>
			<table border=1 width=300>
				<caption>내 정보 수정하기</caption>
				<tr align=center>
					<td>아이디 :</td>
					<td><input type="text" name="id"
						VALUE="<%=rs.getString("id")%>"></td>
				</tr>
				<tr align=center>
					<td>비밀번호 :</td>
					<td><input type="text" name="pass"
						VALUE="<%=rs.getString("pass")%>"></td>
				</tr>
				<tr align=center>
					<td>이름 :</td>
					<td><input type="text" name="name"
						VALUE="<%=rs.getString("name")%>"></td>
				</tr>

				<tr align=center>
					<td>나이 :</td>
					<td><input type="text" name="age"
						VALUE="<%=rs.getString("age")%>"></td>
				</tr>
				<tr align=center>
					<td>성별 :</td>
					<td><input type="text" name="gender"
						VALUE="<%=rs.getString("gender")%>"></td>
				</tr>
				<tr align=center>
					<td>이메일 주소 :</td>
					<td><input type="text" name="email"
						VALUE="<%=rs.getString("email")%>"></td>
				</tr>
				<tr align=center>
					<td colspan=2><a href="javascript:modifyform.submit()">내
							정보 수정하기</a>&nbsp;&nbsp; <a href="javascript:modifyform.reset()">다시작성</a></td>
				</tr>
			</table>
		</center>
</body>
</html>