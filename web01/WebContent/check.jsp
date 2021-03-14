<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 1. 입력한 값 서버쪽에서 받아주어야 함. -->
    <!-- 2. db에 저장이 되어있는 확인처리해야함. -->
    <%
    //자바 코드를 써주는 부분.
    //받아주는 부품을 써야함.
    //HttpServletRequest request = new HttpServletRequest();
    //id=root&pw=1234
    String id = request.getParameter("id"); //"root"
    String pw = request.getParameter("pw"); //"1234"
    %>
    
    <!-- 3. 처리결과를 html로 만들어주어함. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
처리결과를 보여주는 부분은 반드시 html로 만들어서 클라이언트에게 전송해야함.<br>
당신이 입력한 id는 <%= id %> <br>
당신이 입력한 pw는 <%= pw %> <br>
</body>
</html>




