<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    String result = "사용할 수 있는 id입니다. 사용가능!";
    String[] list = {"root", "admin", "test"};
    String id = request.getParameter("id");
    for(String x: list){
    	if(id.equals(x)){
    		result = "이미 존재하는 id입니다. 사용불가!";
    		break;
    	}
    }
    %><%= result %>