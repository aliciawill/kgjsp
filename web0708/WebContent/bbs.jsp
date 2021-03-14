<%@page import="bean.BbsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/project.css">
</head>
<body>
<div id="total">
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id="top2">
		<jsp:include page="top2.jsp"></jsp:include>
	</div>
	<div id="center">
	<%
			if(session.getAttribute("id") != null){
		%>
			<%= session.getAttribute("id") %>님 환영합니다.
			<a href="bbs3.jsp"><button>글쓰기</button> </a>
		<%
			}else{
		%>
			손님 환영합니다.
		<%		
			}
		%>		
		게시판 목록이 들어갈 부분...
		<hr color="red">
		<% //컨트롤+쉬프트+m
			BbsDAO dao = new BbsDAO();
			ArrayList<BbsDTO> list = dao.list();
		%>
		<table>
		<tr>
			<td>게시판아이디</td>
			<td>게시판 제목</td>
			<td>게시판작성자</td>
		</tr>
		<% for(BbsDTO dto: list){ %>
		<tr>
			<td style="width:200px"><%= dto.getId() %></td>
			<td>
				<a href="bbs2.jsp?id=<%= dto.getId() %>"><%= dto.getTitle() %></a>
			</td>
			<td>
				<%= dto.getWriter() %>
			</td>
		</tr>
		<% } %>
		
		</table>	
		
	</div>
</div>
</body>
</html>