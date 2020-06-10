<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<body>
	<form action="add.jsp">
		<table border="1">
		<caption align="center">문제 추가</caption>
		<tr>
			<td>문제 타입</td>
			<td><select name="type">
					<optgroup label="문제 타입">
						<option value="TT">TT</option>
						<option value="IT">IT</option>
						<option value="TI">TI</option>
					</optgroup>
			</select></td>
		</tr>
		<tr>
			<td>문제</td>
			<td><input type="text" name="textexam"></td>
			<td>문제 이미지</td>
			<td><input type="text" name="imageexam"></td>
		</tr>
		<tr>
			<td>보기 1번</td>
			<td><input type="text" name="bogi1"></td>
		</tr>
		<tr>
			<td>보기 2번</td>
			<td><input type="text" name="bogi2"></td>
		</tr>
		<tr>
			<td>보기 3번</td>
			<td><input type="text" name="bogi3"></td>
		</tr>
		<tr>
			<td>보기 4번</td>
			<td><input type="text" name="bogi4"></td>
		</tr>
		<tr>
			<td>답</td>
			<td><input type="text" name="dap"></td>
		</tr>
		<tr>
			<td><input type="submit" value="문제 추가"></td>
		</tr>
		</table>
	</form>
	<br>
	<br>

	<table border="1">
		<caption align="center">문제 확인 및 삭제</caption>
		<%
			String id = null;
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";

		Class.forName(driver);
		conn = DriverManager.getConnection(url, "kds527", "pass123");
		stmt = conn.createStatement();
		rs = stmt.executeQuery("SELECT * FROM QUIZ");

		while (rs.next()) {
			int num = rs.getInt("Q_NUM");
			String question = rs.getString("Q_QUESTION");
			String type = rs.getString("Q_TYPE");
			String ex1 = rs.getString("Q_EX1");
			String ex2 = rs.getString("Q_EX2");
			String ex3 = rs.getString("Q_EX3");
			String ex4 = rs.getString("Q_EX4");
			String ans = rs.getString("Q_ANSWER");
		%>
		<tr>
			<td>문제 타입 :</td>
			<td><%=type%></td>
			<td>문제 :</td>
			<td><%=question%></td>
		</tr>
		<tr>
			<td width="200">보기 1 :</td>
			<td><%=ex1%></td>
			<td width="200">보기 2 :</td>
			<td><%=ex2%></td>
			<td width="200">보기 3 :</td>
			<td><%=ex3%></td>
			<td width="200">보기 4 :</td>
			<td><%=ex4%></td>
		</tr>
		<tr>
			<td>정답 :</td>
			<td><%=ans%></td>
		</tr>
		<tr>
			<td><a href="delete.jsp?num=<%=num%>">삭제</a></td>
			<%
				}
			%>
		
	</table>
</body>
</html>