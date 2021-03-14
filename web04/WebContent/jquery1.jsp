<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	//프로그램을 작성!
	$(function() {
		//기본선택자(selector): 태그(태그이름), 
		//아이디(#아이디명), 클래스(.클래스명)
		$('#pw2').keyup(function() { //콜백함수
			pw1Value = $('#pw1').val()
			pw2Value = $('#pw2').val()
			if (pw1Value == pw2Value) {
				$('div').html('<span style=color:blue>동일함</span>')
			} else {
				$('div').html('<span style=color:red>동일하지 않음</span><br>')
			}
		})
		$('#b1').click(function() { //콜백함수
			alert('b1 버튼을 눌렀음.')
		})
		$('#b2').click(function() { //콜백함수
			alert('b2 버튼을 눌렀음.')
		})
		$('#b3').click(function() { //콜백함수
			alert('b3 버튼을 눌렀음.')
			pw1Value = $('#pw1').val()
			pw2Value = $('#pw2').val()
			if (pw1Value == pw2Value) {
				//alert('동일함.')
//				$('div').html('<span style=color:blue>동일함</span>')
				$('div').append('<span style=color:blue>동일함</span><br>')
			} else {
				//alert('동일하지 않음.')
				$('div').append('<span style=color:red>동일하지 않음</span><br>')

			}
		})
	})
</script>
</head>
<body>
	<button id="b1">나를 눌러요.</button>
	<button id="b2">나도 눌러요.</button>
	<hr>
	패스워드 <input id="pw1"><br>
	패스워드확인 <input id="pw2"><br>
	<button id="b3" style="background: yellow;">패스워드 동일하지 체크</button>
	<br>
	<div></div>
</body>
</html>



