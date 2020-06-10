<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
</head>
<body>
	<%!public class Exam {
		private int munje_num;
		private String munje;
		private String munje_type;
		private String munje_image;
		private String bogi1;
		private String bogi2;
		private String bogi3;
		private String bogi4;
		private String dap;

		public int getMunje_num() {
			return munje_num;
		}

		public void setMunje_num(int munje_num) {
			this.munje_num = munje_num;
		}

		public String getMunje() {
			return munje;
		}

		public void setMunje(String munje) {
			this.munje = munje;
		}

		public String getMunje_type() {
			return munje_type;
		}

		public void setMunje_type(String munje_type) {
			this.munje_type = munje_type;
		}

		public String getMunje_image() {
			return munje_image;
		}

		public void setMunje_image(String munje_image) {
			this.munje_image = munje_image;
		}

		public String getBogi1() {
			return bogi1;
		}

		public void setBogi1(String bogi1) {
			this.bogi1 = bogi1;
		}

		public String getBogi2() {
			return bogi2;
		}

		public void setBogi2(String bogi2) {
			this.bogi2 = bogi2;
		}

		public String getBogi3() {
			return bogi3;
		}

		public void setBogi3(String bogi3) {
			this.bogi3 = bogi3;
		}

		public String getBogi4() {
			return bogi4;
		}

		public void setBogi4(String bogi4) {
			this.bogi4 = bogi4;
		}

		public String getDap() {
			return dap;
		}

		public void setDap(String dap) {
			this.dap = dap;
		}
	}

	ArrayList<Exam> getExamList(Connection conn) {
		ArrayList<Exam> list = new ArrayList<Exam>(); //SQL에서 문제들을 가져와 넣어둘 ArrayList 선언
		String SQL = "SELECT * FROM sihyeomMunje";
		ResultSet rs;
		try {
			Statement stmt = conn.createStatement();
			rs = stmt.executeQuery(SQL);
			while (rs.next()) {
				Exam exam = new Exam();
				exam.setMunje_num(rs.getInt(0));
				exam.setMunje(rs.getString(1));
				exam.setMunje_type(rs.getString(2));
				exam.setMunje_image(rs.getString(3));
				exam.setBogi1(rs.getString(4));
				exam.setBogi2(rs.getString(5));
				exam.setBogi3(rs.getString(6));
				exam.setBogi4(rs.getString(7));
				exam.setDap(rs.getString(8));
				list.add(exam);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return list;
	}

	String[] shuffleChoice(String e1, String e2, String e3, String e4) {
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

	int[] shuffleExamNum(int size) {
		int randNum, i;
		int[] shuffleNum = new int[size];
		Random random = new Random();
		for (i = 0; i < size; i++) //-1로 초기화
			shuffleNum[i] = -1;

		//본격적으로 랜덤화
		for (i = 0; i < size; i++) {
			randNum = random.nextInt(size); //난수값 받음
			//만약 난수값의 인덱스에 아무 값도 들어가 있지 않다면
			if (shuffleNum[randNum] == -1) {
				shuffleNum[randNum] = i;
			} else {
				i--;
			}
		}
		return shuffleNum;
	}%>
	<%
		Connection conn;
	ResultSet rs;
	//try {
	//	String driver = "oracle.jdbc.driver.OracleDriver";
	//	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	//	String userID = "kds527"; // 이 부분만 수정하면 채점 가능합니다.
	//	String userPassword = "pass123";
	//	Class.forName(driver);
	//	conn = DriverManager.getConnection(url, userID, userPassword);
	//} catch (Exception e) {
	//	e.printStackTrace();
	//}
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userID = "kds527"; // 이 부분만 수정하면 채점 가능합니다.
	String userPassword = "pass123";
	Class.forName(driver);
	conn = DriverManager.getConnection(url, userID, userPassword);
	
	request.setCharacterEncoding("euc-kr");
	ArrayList<Exam> list = getExamList(conn);
	int[] randNum;
	String[] choice;
	
	if (list == null) {
		out.println("<script>");
		out.println("alert('시험문제가 존재하지 않습니다.')");
		out.println("history.back()");
		out.println("</script>");
	} else {
		randNum = shuffleExamNum(list.size());
		
	%>
	<form action="examAction.jsp" method="post">
		<%
			for (int i = 0; i < list.size(); i++) {
			if (list.get(randNum[i]).getMunje_type().equals("TT")) {
			} else if (list.get(randNum[i]).getMunje_type().equals("IT")) {
			} else {
			}
			out.println(list.get(randNum[i]).getMunje_num() + "&nbsp;&nbsp;&nbsp;" + list.get(randNum[i]).getMunje() + "<br/>");

			choice = shuffleChoice(list.get(randNum[i]).getBogi1(), list.get(randNum[i]).getBogi2(),
			list.get(randNum[i]).getBogi3(), list.get(randNum[i]).getBogi4());
			for (int j = 0; j < 4; j++) {
		%>
		<input type="radio" name=bogi <%=randNum[i]%> value="<%=choice[j]%>">
		&nbsp;
		<%
			}
		%>
		<input type="hidden" name=dap <%=randNum[i]%>
			value="<%=list.get(randNum[i]).getDap()%>"> <br>
		<%
			}
		%>
		<input type="hidden" name="examSize" value="<%=list.size()%>">
		<input type="submit" value="제출">
	</form>
	<%
		}
	%>
</body>
</html>