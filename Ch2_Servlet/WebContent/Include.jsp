<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include</title>
</head>
<body>
	<h4>처음 인클루드 액션 테스트</h4>
	<jsp:include page="IncludeParam.jsp">
		<jsp:param name="irum" value="Gildong "/>
	</jsp:include>
	<!--  파라미터로 값을 전달할 때는 param을 사용 -->
	<!--  포함될 페이지에 파라미터 값을 지정할 수 있다. -->
	<!--  irum 이라는 변수명에 value  값을 저장하여 지정한 페이지로 가라 -->
	<h4>다시 인클루드 액션 테스트</h4>
</body>
</html>