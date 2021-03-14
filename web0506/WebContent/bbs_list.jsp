<%@page import="bean.BbsVO"%>
<%@page import="bean.BbsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    //import: 컨트롤+쉬프트+m
    	BbsDAO dao = new BbsDAO();
    	ArrayList<BbsVO> list = dao.list();
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>전체 게시판 목록은 <%= list.size() %>개</h3>
<hr color="red">
<% for(BbsVO bag: list){ %>
게시판 번호: <%= bag.getNo() %><br>
게시판 제목: <a href="bbs_one.jsp?no=<%= bag.getNo() %>"><%= bag.getTitle() %></a><br>
게시판 글쓴이: <%= bag.getWriter() %><br>
<hr color="green">
<% } %>
</body>
</html>





