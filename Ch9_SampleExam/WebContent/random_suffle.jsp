<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<!-- 랜덤함수 발생관련 클래스 -->

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
	}%>
<%
	String munje = "다음 중  세번 째 크기의 숫자는 ?";
	String bg1 = "일";
	String bg2 = "이";
	String bg3 = "삼";
	String bg4 = "사";
	String[] show = STRRandom(bg1, bg2, bg3, bg4); // 메소드 호출
%>
</CENTER>
<B>문제 1&nbsp; <%=munje%> <br> <!--  랜덤하게 썩인 보기 출력 --> <INPUT
	TYPE="RADIO" NAME="bogi1" value="<%=show[0]%>"><%=show[0]%>
	&nbsp;&nbsp; <INPUT TYPE="RADIO" NAME="bogi1" value="<%=show[1]%>"><%=show[1]%>
	&nbsp;&nbsp; <INPUT TYPE="RADIO" NAME="bogi1" value="<%=show[2]%>"><%=show[2]%>
	&nbsp;&nbsp; <INPUT TYPE="RADIO" NAME="bogi1" value="<%=show[3]%>"><%=show[3]%>
	&nbsp;&nbsp;
	</CENTER>