<%@page import="java.util.Random"%><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    
    String tel = request.getParameter("tel");
    String sub = tel.substring(0, 3); //0101111222, 0~2
    String result = "";
    if(sub.equals("010")){
    	result = "111";
    }else if(sub.equals("011")){
    	result = "222";
    }else{
    	result = "333";
    }
    
    Random r = new Random();
    int plus = r.nextInt(900) + 100;
    result = result + plus;
    %><%= result %>