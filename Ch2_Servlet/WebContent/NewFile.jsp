<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<body>
   <%
      out.print("Hello JSP");
      /* JSP 문서내에서 out 객체 선언 없이 바로 사용 가능함. */

     /* 서블릿에서는  out 객체를 사용하기 위해 객체 생성 후 사용
      PrintWriter out = response.getWriter(); 
      response 객체의 getWriter() 메소드를 호출하여 생성 후 사용하였음.
      out.println("</html></body>");
    */
   %>
</body>