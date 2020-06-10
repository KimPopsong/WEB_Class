<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!-- join 패키지에 있는 JoinBean 클래스를 Join 이라 부르겠다고 선언 , 즉, Join 데이터 객체 생성 함 -->
<jsp:useBean id="Join" class="Join.MemberBean2" />
<!-- 위에서 생성한 데이터 객체 join 에 데이터를 세팅할 때 일괄로 하겠다고 선언  -->

<!--  아래와 같이 property="*“  로 하면 아디, pass, 이름, 성별, 나이, 이메일 을 setProperty  하지 않아도 된다.  -->
<jsp:setProperty name="Join" property="*" />
<center>
	<table border=1>
		<tr>
			<td width="150px"><font size=2>아이디 : </td>
			<td width="150px"><jsp:getProperty name="Join" property="id" />
			</td>
		</tr>

		<tr>
			<td width="150px"><font size=2>비밀번호 : </td>
			<td width="150px"><jsp:getProperty name="Join" property="pass" />
			</td>
		</tr>

		<tr>
			<td width="150px"><font size=2>이름 : </td>
			<td width="150px"><jsp:getProperty name="Join" property="name" />
			</td>
		</tr>

		<tr>
			<td width="150px"><font size=2>성별 : </td>
			<td width="150px"><jsp:getProperty name="Join" property="sex" />
			</td>
		</tr>

		<tr>
			<td width="150px"><font size=2>나이 : </td>
			<td width="150px"><jsp:getProperty name="Join" property="age" />
			</td>
		</tr>

		<tr>
			<td bgcolor="yellow"><font size=2>이메일주소 : </td>
			<td width="150px"><jsp:getProperty name="Join" property="email" />
			</td>
		</tr>
	</table>
</center>