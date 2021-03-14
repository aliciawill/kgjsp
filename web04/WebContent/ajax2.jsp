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
				url: "file/rank.xml",
				success: function(doc) {
					console.log(doc)
					list = $(doc).find('rank')
					for (var i = 0; i < list.length; i++) {
						//console.log(list[i])
						name = $(list[i]).find('name').text()
						console.log(name)
						tel = $(list[i]).find('tel').text()
						console.log(tel)
					}
				}
			})
		})
		$('#b2').click(function() {
			$.ajax({
				url: "file/member.json",
				success: function(doc) {
					//console.log(doc)
					console.log(doc.length)
					$(doc).each(function(index, person) {
						idValue = person.id
						emailValue = person.email
						carValue = person.car
						console.log(index + ": " + idValue + ", " + emailValue + ", " + carValue)
						$.ajax({
							url: 'db_create.jsp',
							async: false,
							data: {
								id: idValue,
								email: emailValue,
								car: carValue
							},
							success: function() {
								console.log('db에 넣기 성공')
							}
						})
					})
				}
			})
		})
	})
</script>
</head>
<body>
<button id="b1">XML데이터 받아오기</button>
<button id="b2">JSON데이터 받아오기</button>
<hr color="red">
<div></div>
</body>
</html>







