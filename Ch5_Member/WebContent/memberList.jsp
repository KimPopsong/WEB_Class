<%--
 <%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>  
<%@ page import="javax.sql.* " %>
<%@ page import="javax.naming.*" %>
<%
int i=0;  
String sql="SELECT * FROM member";
String driver="oracle.jdbc.driver.OracleDriver"; 
String url="jdbc:oracle:thin:@localhost:1521:orcl";
try {
Class.forName(driver); 
Connection con = 
               DriverManager.getConnection(url, "kbs123","pass123");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
%>


<body> <center>
 <h4> [ 회원리스트 ] </h4>
 <table border="1" cellspacing="1">
    <tr> <th>NO</th> <th>ID</th> <th>PASS</th> <th>이름</th><th>나이</th><th>성별</th><th>이메일</th><th>상태</th></tr>
<%
    // 6단계: 모든 행  반복 처리
    while ( rs.next() )  {
%><tr> <td><%= ++i %></td>
           <td><%= rs.getString(1) %> </td> 
           <td><%= rs.getString(2) %> </td> 
            <td><%= rs.getString(3) %> </td>    
           <td><%= rs.getInt(4) %> </td>
           <td><%= rs.getString(5) %> </td>  
            <td><%= rs.getString(6) %> </td> 
             <td><%= rs.getInt(7) %> </td>   
  </tr>
<%
 }
 %>
 </table> 

 <% // 7단계: 사용한 자원 해제
 rs.close();
 stmt.close();
 con.close();
%>
 <h4>DB에서 정상적으로 검색 되었습니다!!!</h4>
<%
 } catch (SQLException e) {
%>
   <h4>에러가 발생 했군요. 다시 확인해 보세요!!!</h4>
<% 
} 
%>
</center>
</body></html> 

--%>



<!-- 
// =================================================== 
======================================================
======================================================
-->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
	request.setCharacterEncoding("euc-kr");

	String id = null;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";

	// 로그인 하지 않았거나(세션값이 없으면)  또는 관리자가 아니면 
	// memberLogin.jsp 로 가라.  
	// 바로 memberList.jsp를 실행하면 memberLogin.jsp 로 튕겨나감

	if ((session.getAttribute("id") == null) || (!((String) session.getAttribute("id")).equals("admin"))) {
		out.println("<script>");
		out.println("location.href='memberLogin.jsp'");
		out.println("</script>");
	}

	// 정상적으로 로그인 하고 들어오면 이곳 수행
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "kbs123", "pass123");
		pstmt = conn.prepareStatement("SELECT * FROM member where status=0");
		rs = pstmt.executeQuery();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>


<body>
	<table border=1 width=500>
		<tr align=center>
			<td colspan=4>정상 회원 목록</td>
		</tr>
		<tr align=center>
			<td>아이디</td>
			<td>이름</td>
			<td></td>
			<td></td>
		</tr>
		<%
			while (rs.next()) {
		%>
		<tr align=center>
			<td><a href="memberInfo.jsp?id=<%=rs.getString("id")%>"> <!-- 아디를 클릭하면 memberInfo.jsp로 가는데 id값을 가지고 가라  -->
					<%=rs.getString("id")%>
			</a></td>
			<%-- <%=rs.getString("id") %>주석 처리하고 실행 해 볼 것 --%>
			<td><%=rs.getString("name")%></a></td>


			<td><a href="memberBad.jsp?id=<%=rs.getString("id")%>">불량회원
					등록하기</a></td>
			<!-- 불량회원을 클릭하면 memberDelete.jsp로 가는데 id 값을 가지고 가라  -->

			<!-- 퇴출 를 클릭하면 memberExit.jsp로 가는데 id 값을 가지고 가라  -->
			<td><a href="memberExit.jsp?id=<%=rs.getString("id")%>">강제
					퇴출</a></td>
		</tr>
		<%
			}
		%>
	</table>
	<table border=1 width=500>
		<tr align=center>
			<td><a href="memberBadList.jsp">불량 회원 리스트 보기</a></td>
		</tr>
	</table>
</body>


