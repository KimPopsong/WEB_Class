<%@ page language="java" contentType="text/html;charset=UTF-8 "
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" ">
<body>
	<center>
		<h3>정보 입력 화면</h3>
		<form method="post" action="DB_Insert_OK.jsp" name="dbinput">
			<table border="1" cellspacing="1">
				<tr>
					<td>학번 :</td>
					<td><input type="text" name="num"></td>
				</tr>
				<tr>
					<td>이름 :</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr align="center">
					<td colspan=2><input type="submit" value="등   록"> <input
						type="reset" name="reset" value="취  소"></td>
				</tr>
			</table>
		</form>
	</center>
</body>