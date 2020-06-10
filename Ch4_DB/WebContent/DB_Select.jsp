<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Connection connection;
	Statement statement;
	ResultSet resultSet;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid = "kds527";
	String upw = "pass123";
	String query = "select * from student";
%>
<body>
<%!// 보기를 랜덤하게 보여주기 위한 함수
	String[] STRRandom(String e1, String e2, String e3, String e4) 
	{
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
	}%>

	<%
		Class.forName(driver);
		connection = DriverManager.getConnection(url, uid, upw);
		statement = connection.createStatement();
		resultSet = statement.executeQuery(query);
		// statement 객체를 이용하여 SQL문 실행 후 결과를  저장 
		/* 실행한 결과 데이터를 resultSet 에 저장됨 */
		// statement 인터페이스는 SQL 문을 직접 실행할 수 있다.
		out.println(" 번호 " + "  이름 " + "<br />");
		out.println(" ====  ====== " + "<br />");
		while (resultSet.next()) // 처음부터 끝까지 
		{
			int num = resultSet.getInt("num");
			//  int num = resultSet.getInt(1);
			String name = resultSet.getString("name");
			//  String name = resultSet.getString(2);
			out.println(num + "&nbsp;&nbsp;&nbsp;" + name + "<br />");
		}
		if (resultSet != null)
			resultSet.close();
		if (statement != null)
			statement.close();
		if (connection != null)
			connection.close();
	%>
</body>

