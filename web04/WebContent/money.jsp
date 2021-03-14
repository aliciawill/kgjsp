<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    	String money = request.getParameter("money");
    	String choice = request.getParameter("choice");
    	int money2 = Integer.parseInt(money);
    	if(choice.equals("1")){
    		money2 = (int)(money2 * 0.8);
    	}else if(choice.equals("2")){
    		money2 = (int)(money2 * 0.9);
    	}
    %>당신이 지불할 금액은 <%=money2%>원 