<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*" %>
<%
    request.setCharacterEncoding("euc-kr");
   
     String id=null;
     Connection conn=null;
     PreparedStatement pstmt=null;
     ResultSet rs=null;

     String driver="oracle.jdbc.driver.OracleDriver";  //드라이버 이름 설정
String url="jdbc:oracle:thin:@localhost:1521:orcl";

try {
Class.forName(driver);  //드라이버 이름으로 드라이버를 로드
    conn=DriverManager.getConnection(url,"kbs123","pass123");
// 불량 회원은 status 가 1인 경우이므로 status 가 1 인 것만 불러옴
pstmt=conn.prepareStatement("SELECT * FROM member where status=1");
rs=pstmt.executeQuery();
}catch(Exception e){
e.printStackTrace();
}
%>
     
  <html><head>
<title>회원관리 시스템 관리자모드(회원 목록 보기)</title>
</head><body><center>
<table border=1 width=400>
<tr align=center><td colspan=2>불량 회원 목록</td></tr>
<%while(rs.next()){%>
<tr align=center>
<td>
<a href="memberBadInfo.jsp?id=<%=rs.getString("id") %>">
<%=rs.getString("id") %>
</a>
</td>
<td><%=rs.getString("name") %></td>
</tr>
<%} %>
</table>
</center></body></html>   