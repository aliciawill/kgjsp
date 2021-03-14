<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Class.forName("com.mysql.jdbc.Driver");
%>
1. 커넥터 설정 성공<br>
<%
//2. db연결(url, id, pw)
String url = "jdbc:mysql://localhost:3366/spring";
String user = "root";
String password = "1234";
Connection con = DriverManager.getConnection(url, user, password);
out.print("2. db연결 성공<br>");


//3. sql문 생성
String sql = "delete from member where id = ?";
PreparedStatement ps = con.prepareStatement(sql);
out.print("3.  sql문 생성 성공<br>");

//4. sql문을 mysql서버에 전송
int result = ps.executeUpdate(); //성공했으면 1, 실패했으면 0
out.print("4.  sql문을 mysql서버에 전송 성공<br>");
if(result == 1){
	out.print("회원탈퇴 성공함.@@@@@@@@@@@@@@");
}else{
	out.print("회원탈퇴 실패함.@@@@@@@@@@@@@@");
}

%>




