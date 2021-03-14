<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url: "test.jsp",
				data: {
					test : $('#test').val()
				},
				success: function(x) {
					$('div').html('ajax성공함.' + x)
				},
				error: function() {
					$('div').html('ajax실패함.')
				}
			})
		})
		$('#b2').click(function() {
			$.ajax({
				url: "money.jsp",
				data: {
					money: $('#money').val(),
					choice: $('#choice').val()
				},
				success: function(result) {
					imsi = result
					//alert(result)
					$('div').html(result)
				}
			})
			
		})
		$('#b3').click(function() {
			$.ajax({
				url: "check.jsp",
				data: {
					id: $('#id').val()
				},
				success: function(result) {
					$('div').html(result)
				}
			})
		})
		
		$('#b4').click(function() {
			$.ajax({
				url: "tel.jsp",
				data: {
					tel: $('#tel').val()
				},
				success: function(result) {
					num2 = result; 
					$('div').html(result)
				}
			})
		})
		$('#b5').click(function() {
			num = $('#num').val()
			if(num == num2){
				alert(num + ", " + num2)
				$('div').html('본인 인증 확인 성공')
			}else{
				alert(imsi)
				alert(num + ", " + num2)
				$('div').html('본인 인증 확인 실패')
			}
		})
	})
</script>
</head>
<body>
<h3>비동기통신으로 서버와 통신하기</h3>
ajax테스트: <input id="test"><button id="b1">Ajax테스트(test.jsp)</button>
<hr color="blue">
결제금액: <input id="money"><br>
결제수단: 1)계좌이체 2)신용카드 3)휴대폰결제 <input id="choice">
<button id="b2">결제하기(money.jsp)</button>
<hr color="red">
회원가입할 id입력: <input id="id">
<button id="b3">id중복체크(check.jsp)</button>
<hr color="red">
인증받을 전화번호 입력: <input id="tel">
<button id="b4">인증번호 받기(tel.jsp)</button><br>
인증받은 숫자입력: <input id="num">
<button id="b5">인증번호 번호 확인</button>

<hr color="green">
<div></div>
</body>
</html>







