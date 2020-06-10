<%@ page language="java" contentType="text/html;  charset=EUC-KR"
pageEncoding="EUC-KR"%>
<h4>1부터 100까지의 합은
<%
      int hap=0;
      for(int i=1;i<=100;i++){
	hap+=i;
         }
%>
<%= hap %>입니다.</h4>
