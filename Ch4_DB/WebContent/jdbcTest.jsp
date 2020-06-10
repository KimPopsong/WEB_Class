<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"  %> // DB 사용시 반드시 추가
<%
 Connection conn=null;  // 커넥션 객체 conn 생성
 String driver="oracle.jdbc.driver.OracleDriver";  // JDBC 드라이버 이름 설정
 String url="jdbc:oracle:thin:@localhost:1521:orcl"; 
     //드라이버 사용하여 접속할 URL , 즉  DB 가 있는 위치

 Boolean connect=false;   // 결과 저장할 변수 
 Class.forName(driver);  // drivee  이름으로 OracleDriver 로드
 conn=DriverManager.getConnection(url,"kds527","pass123");
      // DriverManager을 이용하여 Connection 객체를 얻어온다.
 connect=true;    // 정상적으로 접근이 되면
 conn.close(); // 데이터 베이스 연결 해지
 %>
<body>
	<h3>
		<% if(connect==true){ %>
		축하 해 , DB 연결 성공…
		<%
 } 
 else { 
 %>
		DB 연결에 실패-4장 처음부터 다시 해야 함
		<%
 } 
 %>
	</h3>
</body>


