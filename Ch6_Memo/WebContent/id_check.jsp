<%@ page language="java" import="java.util.*" import="java.sql.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String id = request.getParameter("id");
	// 폼에서 입력한 id 참조, 
	boolean fnd = false; // id 여부 저장

	if (id == null) // id 가 없으면
		id = "";
	else {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		Connection conn = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "kds527", "pass123");
		ResultSet rs = null;
		Statement stmt = conn.createStatement();
		String strSQL = "SELECT id FROM member WHERE id='" + id + "'";
		// 뒤에 id는 아디 체크 폼에서 입력한 아이디임.
		rs = stmt.executeQuery(strSQL);

		if (rs.next())
			fnd = true; // 아디 존재 여부 저장할 부울 변수 
		// select 된 결과 행이 있으면 fnd 는 true, 즉 존재하면
		stmt.close();
		conn.close();
	}
%>
<HTML>
<HEAD>
<TITLE>id check</TITLE>
</HEAD>
<script language="JavaScript">
function id_search()  // id 유효성 검사 메소드 , id 하나만 체크 함
{
   if(document.form_id_check.id.value=="") 
   {
     alert("ID를 입력해 주세요.");
     document.form_id_check.id.focus();
   }
     else 
     {
      document.form_id_check.submit();
     }
}  function id_ok(a)
  {
    opener.document.joinform.id.value=a;       
    self.close();   
  }
   <%--  다음 페이지에 있는 <a href ="javascript:id_ok('<%= id %>')">  확인 --%>
   /* 확인 버튼을 클릭하면 id 값이 값이 이곳으로 전달되고 
      여기로 전달 된 id값 즉 a의 값은 회원 가입폼(joinform)의 id 값으로
      넘겨져서 채워진다. */
</script>
<BODY>
	<BR>
	<P align="center">사용할 ID를 입력 후 검색 버튼을 누르세요</P>
	<FORM NAME="form_id_check" ACTION="id_check.jsp" METHOD="POST">
		<TABLE WIDTH="200">
			<TR>
				<TD WIDTH="150">ID</TD>
				<TD WIDTH="100"><INPUT TYPE="text" NAME="id" size="20"
					VALUE=<%=id%>></TD>
				<!-- id_check.jsp  폼에서 입력하여 중복 검사 후 채워진 id -->
				<TD WIDTH="40"><INPUT TYPE="button" VALUE="검색"
					onClick="javascript:id_search()"></TD>
			</TR>
		</TABLE>
	</FORM>
	<%
		if (id != "" && fnd == false) {
	%>
	사용 가능한 ID 입니다
	<P>
		확인을 누르시면 회원등록 화면으로 돌아갑니다. <a href="javascript:id_ok('<%=id%>')">
			확인 </a>
		<%
			// 앞 4/6 의  id_ok() 가 보면
			} else if (id != "" && fnd == true) {
		%>
		이미 사용 중인 ID 입니다.
		<%
			}
		%>
	
</BODY>
</HTML>
