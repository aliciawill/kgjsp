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
		$.ajax({
			//url: "http://rss.hankyung.com/new/news_enter.xml",
			url : 'https://api.rss2json.com/v1/api.json?rss_url=http%3A%2F%2Frss.hankyung.com%2Fnew%2Fnews_enter.xml&api_key=rooa9cfdnkctmsnpiftxnozlzfyaunxvudzwajoq',
			data : {
				url: 'http://rss.hankyung.com/new/news_enter.xml',
				api_key: 'rooa9cfdnkctmsnpiftxnozlzfyaunxvudzwajoq',
				count: 20
			},					
			success: function(doc) {
				alert('한경 사이트 연결 성공.')
				console.log(doc)
				list = doc.items
				$(list).each(function(index, news) {
					console.log(index + ": " + news.title + ",  " + news.link + ", " + news.pubDate)
					a = '-<a href=' + news.link + '>' + news.title + '</a><br>'
					$('div').append(a)
				})
			}
		})
	})
</script>

</head>
<body>
<div></div>
</body>
</html>