<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import=" java.util.Calendar"%>

<body>
	<%
		int cnt = 0;
		int c_day;
		int ad_cnt = 0;
		String sessionID = (String) session.getAttribute("id");

		Calendar now = Calendar.getInstance();
		c_day = now.get(Calendar.DATE);

		if ((session.getAttribute("id") == null)) {
			/* memberLogin.jsp 에서 저장한 세션 값 */
			out.println("<script>");
			out.println("location.href='memberLogin.jsp'");
			out.println("</script>");
		}
	%><form action="memo_ok.jsp" method="post">
		<table border=1 align="center">
			<tr>
				<td colspan=5 align=center width="650px">한 줄 메모장</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input name="name" type="text"
					VALUE="<%=session.getAttribute("id")%>"></td>
				<!-- 로그인하고 나면 이곳에서 이름 값에 값을 넣어줌 -->
				<td>비밀번호</td>
				<td><input name="pass" type="password" value="pass" readonly></td>
				<td rowspan=2><input value="저장하기" type="submit"></td>
			</tr>
			<tr>
				<td>내 용</td>
				<td colspan=3><input name="title" type="text" size="70"></td>
		</table>
	</form>
	<br>
	<%
		request.setCharacterEncoding("euc-kr");
		int i = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement ad_pstmt = null;

		ResultSet rs = null;
		ResultSet ad_rs = null;

		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "kds527", "pass123");
			// 여러 SQL  사용하려면 이 이하부터 다시 추가 하여 사용하면 됨.
			ad_pstmt = conn.prepareStatement("SELECT * FROM memo_Test where name='admin' order by indate desc  ");
			pstmt = conn.prepareStatement("SELECT * FROM memo_Test order by indate desc");
			// order by indate desc  최근 글이 맨 위로 표시함

			Statement cnt_stmt = conn.createStatement();
			String cntsql = "SELECT COUNT(*) FROM memo_Test";
			ResultSet cnt_rs = cnt_stmt.executeQuery(cntsql);
			if (cnt_rs.next())
				cnt = cnt_rs.getInt(1);
			//글의 개수

			ad_rs = ad_pstmt.executeQuery();
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%><table border="1" cellspacing="1" align="center">
		<tr>
			<td colspan=5 align="center">총 <%=cnt%>개 글이 있습니다.
			</td>
		</tr>

		<%
			while (ad_rs.next() && ad_cnt < 3) {
		%>
		<tr>
			<td width="40px"><%=ad_rs.getString(1)%></td>
			<td width="100px"><%=ad_rs.getString(2)%></td>
			<td width="300px"><%=ad_rs.getString(3)%></td>
			<td width="90px"><%=(ad_rs.getString("indate")).substring(0, 10)%>
				<%
					String write_day = ad_rs.getString("indate").substring(8, 10);
						int w_day = Integer.parseInt(write_day);
				%> <%
 	if (w_day + 2 > c_day) {
 %> <img src="new.png"> <%
 	}
 %></td>
			<%
				if (sessionID != null && sessionID.equals("admin")) {
			%>
			<td width="40px"><a
				href="memo_Delete.jsp?num=<%=ad_rs.getString(1)%>">삭제</a></td>
			<%
				}

					ad_cnt++;
			%>
		</tr>
		<%
			}
		%>
		<!-- ad_rs문 끝 -->
		<%
			ad_cnt = 0;
			while (rs.next()) {
				if (rs.getString(2).equals("admin")) {
					if (ad_cnt < 3) {
						ad_cnt++;
						continue;
					}
				}
		%>
		<tr>
			<td width="40px"><%=rs.getString(1)%></td>
			<td width="100px"><%=rs.getString(2)%></td>
			<td width="300px"><%=rs.getString(3)%></td>
			<td width="90px"><%=(rs.getString("indate")).substring(0, 10)%>
				<%
					String write_day = rs.getString("indate").substring(8, 10);
						int w_day = Integer.parseInt(write_day);
				%> <%
 	if (w_day + 2 > c_day) {
 %> <img src="new.png"> <%
 	}
 %></td>
			<%
				if (sessionID != null && sessionID.equals("admin")) {
			%>
			<td width="40px"><a
				href="memo_Delete.jsp?num=<%=rs.getString(1)%>">삭제</a></td>
			<%
				}
			%>
		</tr>
		<%
			}
		%>
	</table>
</body>