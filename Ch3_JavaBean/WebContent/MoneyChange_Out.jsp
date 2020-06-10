<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>

<jsp:useBean id="MC" class="Money.moneyChange" />
<!--  moneychange 패키지에 있는   MoneyChange 클래스를  
       이용하여  MC 라고 하는 객체를 생성한다. -->

<jsp:setProperty name="MC" property="*" />
<!-- 위에서 생성된 MC 라는 객체에 폼에서
     입력 받은 내용을 한번에 저장하기 위해 property="*" 로 처리 -->
<body>
	<br>
	<!-- 속성 값 호출 -->
	한국 돈
	<%=MC.getNumber()%>
	원을 ,
	<br>

	<!– MoneyChange.java 에 있는 America()메소드 호출 -->
	미국 돈으로 환전하면
	<%=MC.America()%>
	달러고 ,
	<br>

	<!-- MoneyChange.java 에 있는 Japan()메소드 호출메소드 호출 -->
	일본 돈으로 환전하면
	<%=MC.Japan()%>
	엔이다 ,
	<br>

</body>