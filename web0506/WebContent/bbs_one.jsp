<%@page import="bean.BbsVO"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String no = request.getParameter("no");
    BbsDAO dao = new BbsDAO();
    BbsVO bag = dao.read(no);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
게시판 번호: <%= bag.getNo() %><br>
게시판 제목: <%= bag.getTitle() %><br>
게시판 내용: <%= bag.getContent() %><br>
게시판 글쓴이: <%= bag.getWriter() %><br>
<hr>
<a href="게시판한개검색.html">게시판 한개 검색 페이지로</a>
</body>
</html>