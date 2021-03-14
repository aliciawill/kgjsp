<%@page import="bean.MemberVO"%>
<%@page import="bean.MemberDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 1. 클라이언트가 입력한 정보 웹서버에서 받아주어야 함. -->
<%
	String id = request.getParameter("id");
%>
<%
	MemberDAO db = new MemberDAO();
	MemberVO bag = db.read(id);
%>
<!-- 3. 결과를 html로 만들어서 클라이언트에게 전송함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>회원한명 검색 신청이 완료되었습니다.
<hr>
아이디 <%=  bag.getId() %><br>
패스워드 <%=  bag.getPw() %><br>
이름 <%=  bag.getName() %><br>
전화번호 <%=  bag.getTel() %><br>


</body>
</html>