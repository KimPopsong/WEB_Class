<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
	request.setCharacterEncoding("euc-kr");
String id = request.getParameter("id");
String name = request.getParameter("name");

Connection conn = null;
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
Class.forName(driver);
conn = DriverManager.getConnection(url, "kds527", "pass123");
Statement stmt = conn.createStatement();
String SQL = "select S_Hakbun from SCORE where S_Hakbun = '" + id + "'";
ResultSet rs = stmt.executeQuery(SQL);

if(id.equals("admin"))
{	
	out.println("<script>");
	out.println("location.href='adminPage.jsp'");
	out.println("</script>");
}

rs.next();

if (rs != null) // �ҷ��� ������ �����ΰ�  �ְ�, �� �ߺ��� ���̵� �ִٸ�
{
	try { // �ߺ��� ID�� ������
		String S_Hakbun = id;
		String S_Name = name;
		
		String SQL1 = "insert into SCORE(S_Hakbun, S_Name) values (?,?)";
		PreparedStatement pstmt = conn.prepareStatement(SQL1);
		session.setAttribute("id", id); // �Ƶ� ���ǰ����� ����
		session.setAttribute("name", name);		
		
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		
		pstmt.executeUpdate();
		pstmt.close();
		stmt.close();
		conn.close();
		out.println("<script>");
		out.println("location.href='exam.jsp'");
		out.println("</script>");
	}

	catch (Exception e) {
		out.println("<script>");
		out.println("alert('�й� �ߺ�')");
		out.println("location.href='login.jsp'");
		out.println("</script>");
	}
}
out.println("<script>");
out.println("location.href='login.jsp'");
out.println("</script>");
%>