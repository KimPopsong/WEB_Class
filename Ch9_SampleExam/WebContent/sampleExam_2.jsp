<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
</head>
<body>
<%!// 보기를 랜덤하게 보여주기 위한 함수
	String[] STRRandom(String e1, String e2, String e3, String e4) {
		String[] result = new String[4];
		Random random = new Random();
		for (int i = 0; i < 4; i++)
			result[i] = ""; // 초기화
		int count = 0;
		while (true) {
			if (count == 4) //  4크기의 배열에 모두 값이 들어갔을 경우 반복문 종료
				break;
			int k = random.nextInt(4);
			if (result[k].equals("")) { //    k에 0~3 사이의 값을 랜덤하게 받아 
				switch (count) { // result[k]가 비어있으면 count 값에 따라 값을 넣음
				case 0:
					result[k] = e1;
					count++;
					break;
				case 1:
					result[k] = e2;
					count++;
					break;
				case 2:
					result[k] = e3;
					count++;
					break;
				case 3:
					result[k] = e4;
					count++;
					break;
				}
			}
		}
		return result;
	}
%>
<%
	request.setCharacterEncoding("euc-kr");

	String id = null;
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";

	// 정상적으로 로그인 하고 들어오면 이곳 수행
	try 
	{
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "kds527", "pass123");
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from sihyeomMunje");
	} 
	
	catch (Exception e) 
	{
		e.printStackTrace();
	}
	%>
	
	<form action="sampleExamOk_2.jsp" method="post">
	
	<%	
	for (int i = 0; rs.next(); i++) // 처음부터 끝까지 
	{	
		int munje_num = rs.getInt("munje_num");
		String munje = rs.getString("munje");
		String munje_type = rs.getString("munje_type");
		String bogi1 = rs.getString("bogi1");
		String bogi2 = rs.getString("bogi2");
		String bogi3 = rs.getString("bogi3");
		String bogi4 = rs.getString("bogi4");
		String dap = rs.getString("dap");
		String[] show = STRRandom(bogi1, bogi2, bogi3, bogi4);
	
		out.println(munje_num + "&nbsp;&nbsp;&nbsp;" + munje + "<br/>");
		for (int j = 0; j < 4; j++) {
		%>
		
		<input type="radio" name =  bogi<%=i%> value = "<%=show[j]%>"> <%=show[j] %> &nbsp; 
		<%
			}
		%>
		<input type="hidden" name = dap<%=i%> value = "<%=dap %>">
		<br> 
		<%
		}
		%>
		
		<input type="submit" value="제출">
	</form>
</body>
</html>