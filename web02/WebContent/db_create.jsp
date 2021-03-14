<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//입력한 데이터 서버에서 받아주자.!
//id=win&pw=win&name=win&tel=win
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String tel = request.getParameter("tel");


//스크립트릿: 자바코드가 들어가는 부분
//릿(let): 작은 프로그램
//자바에서 db를 연결해보자.
//Java DB connectivity(JDBC) 프로그래밍
//1. connector 설정
Class.forName("com.mysql.jdbc.Driver");
%>
1. 커넥터 설정 성공<br>
<%
//2. db연결(url, id, pw)
String url = "jdbc:mysql://localhost:3366/spring";
String user = "root";
String password = "1234";
Connection con = DriverManager.getConnection(url, user, password);
//String name = JOptionPane.showInputDialog("이름을 입력"); //"홍길동"
//PrintWriter out = new PrintWriter();
out.print("2. db연결 성공<br>");

/* String site = "http://www.naver.com";
URL url2 = new URL(site);

String name = "test.txt";
File file = new File(name); */

//3. sql문 생성
String sql = "insert into member values (?, ?, ?, ?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, id);
ps.setString(2, pw);
ps.setString(3, name);
ps.setString(4, tel);

out.print("3.  sql문 생성 성공<br>");

//4. sql문을 mysql서버에 전송
int	result = 0;

try{
	result = ps.executeUpdate(); //성공했으면 1, 실패했으면 0
}catch(Exception e){
	out.print("db처리 전송후 에러발생함.<br>");
}
	
out.print("4.  sql문을 mysql서버에 전송 성공<br>");
if(result == 1){
	out.print("회원가입 성공함.@@@@@@@@@@@@@@");
}else{
	out.print("회원가입 실패함.@@@@@@@@@@@@@@");
}

%>




