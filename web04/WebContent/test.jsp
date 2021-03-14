<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String test = request.getParameter("test");
	String result = "당신이 보낸 데이터는 " + test;
%><%= result %>