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
		$('#b1').click(function() {
			word = $('#word').val()
			$('#d1').append(word + '<br>')
		})
		$('#b2').click(function() {
			img = '<img src=img/car.png width=100 height=100>'
			$('#d1').append(img)
		})
		$('#b3').click(function() {
			word = $('#word').val()
			img = '<img src=img/car.png width=30 height=30>'
			$('#d1').append(img + word + '<br>')
		})
	})
</script>
</head>
<body>
	댓글 <input id='word'>
	<button id="b1">댓글추가</button>
	<button id="b2">이미지추가</button>
	<button id="b3">댓글+이미지추가</button>
	<hr color="red">
	<div id="d1"></div>
</body>
</html>



