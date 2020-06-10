<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
	request.setCharacterEncoding("euc-kr");

	Connection conn = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	
	Class.forName(driver);
	conn = DriverManager.getConnection(url, "kds527", "pass123");
	Statement stmt = conn.createStatement();
	String SQL = "select * from sihyeomMunje";
	ResultSet rs = stmt.executeQuery(SQL);

	int score = 0;
	
	for (int i = 0; rs.next(); i++)
	{
		//int munje_num = Integer.parseInt(request.getParameter("munje_num"));
		String munje = request.getParameter("munje");
		String munje_type = request.getParameter("munje_type");
		String bogi = request.getParameter(("bogi" + String.valueOf(i)));
		String dap = request.getParameter("dap" + String.valueOf(i));
		
		if (dap.equals(bogi))
			score++;
	}
%>

Á¡¼ö´Â <%= score %><br>