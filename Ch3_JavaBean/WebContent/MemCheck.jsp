<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!-- join ��Ű���� �ִ� JoinBean Ŭ������ Join �̶� �θ��ڴٰ� ���� , ��, Join ������ ��ü ���� �� -->
<jsp:useBean id="Join" class="Join.MemberBean2" />
<!-- ������ ������ ������ ��ü join �� �����͸� ������ �� �ϰ��� �ϰڴٰ� ����  -->

<!--  �Ʒ��� ���� property="*��  �� �ϸ� �Ƶ�, pass, �̸�, ����, ����, �̸��� �� setProperty  ���� �ʾƵ� �ȴ�.  -->
<jsp:setProperty name="Join" property="*" />
<center>
	<table border=1>
		<tr>
			<td width="150px"><font size=2>���̵� : </td>
			<td width="150px"><jsp:getProperty name="Join" property="id" />
			</td>
		</tr>

		<tr>
			<td width="150px"><font size=2>��й�ȣ : </td>
			<td width="150px"><jsp:getProperty name="Join" property="pass" />
			</td>
		</tr>

		<tr>
			<td width="150px"><font size=2>�̸� : </td>
			<td width="150px"><jsp:getProperty name="Join" property="name" />
			</td>
		</tr>

		<tr>
			<td width="150px"><font size=2>���� : </td>
			<td width="150px"><jsp:getProperty name="Join" property="sex" />
			</td>
		</tr>

		<tr>
			<td width="150px"><font size=2>���� : </td>
			<td width="150px"><jsp:getProperty name="Join" property="age" />
			</td>
		</tr>

		<tr>
			<td bgcolor="yellow"><font size=2>�̸����ּ� : </td>
			<td width="150px"><jsp:getProperty name="Join" property="email" />
			</td>
		</tr>
	</table>
</center>