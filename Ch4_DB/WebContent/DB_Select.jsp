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
<%!// ���⸦ �����ϰ� �����ֱ� ���� �Լ�
	String[] STRRandom(String e1, String e2, String e3, String e4) 
	{
		String[] result = new String[4];
		Random random = new Random();
		for (int i = 0; i < 4; i++)
			result[i] = ""; // �ʱ�ȭ
		int count = 0;
		while (true) {
			if (count == 4) //  4ũ���� �迭�� ��� ���� ���� ��� �ݺ��� ����
				break;
			int k = random.nextInt(4);
			if (result[k].equals("")) { //    k�� 0~3 ������ ���� �����ϰ� �޾� 
				switch (count) { // result[k]�� ��������� count ���� ���� ���� ����
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
		// statement ��ü�� �̿��Ͽ� SQL�� ���� �� �����  ���� 
		/* ������ ��� �����͸� resultSet �� ����� */
		// statement �������̽��� SQL ���� ���� ������ �� �ִ�.
		out.println(" ��ȣ " + "  �̸� " + "<br />");
		out.println(" ====  ====== " + "<br />");
		while (resultSet.next()) // ó������ ������ 
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

