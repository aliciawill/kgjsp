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
	db.delete(id);
%>
<!-- 3. 결과를 html로 만들어서 클라이언트에게 전송함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원탈퇴 신청이 완료되었습니다.
</body>
</html>