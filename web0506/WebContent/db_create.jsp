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
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
%>
<!-- 2. db연결한 다음에 sql문 만들어서 mysql에 전달함. -->
<!-- jdbc 프로그래밍 -->
<!-- 1) 커넥터 설정 -->
<!-- 2) mysql에 연결, 1)url, 2)user, 3)pw -->
<!-- 3) sql문을 생성 -->
<!-- 4) sql문을 전송 -->
<%
	//가방을 만들어서
	MemberVO bag = new MemberVO();

	//값들을 가방에 넣어서
	bag.setId(id);
	bag.setPw(pw);
	bag.setName(name);
	bag.setTel(tel);
	
	//가방 1개만 전달
	MemberDAO db = new MemberDAO();
	db.create(bag); //call by reference
	//메소드를 호출할 때 입력값으로 주소를 전달하는 것
	//메소드를 호출할 때 입력값으로 기본형값을 전달하는 것
	//<->call by value
%>
<!-- 3. 결과를 html로 만들어서 클라이언트에게 전송함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원가입 신청이 완료되었습니다.
</body>
</html>