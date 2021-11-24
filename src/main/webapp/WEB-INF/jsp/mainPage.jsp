<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<title>Main Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,800" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>" />
</head>

<body>
	<div class="header">
		<div class="inner_header">
			<div class="logo_container">
				<h1>
					MY <span>NEWS PORTAL</span>
				</h1>
			</div>
			<ul class="navigation">
				<li><a href="<c:url value="/news/goToMainPage"/>">HOME</a></li>
				<li><a href="<c:url value="/news/goToAddNewsPage"/>">ADD NEWS</a></li>
			</ul>
		</div>
	</div>
	<main>
		<div class="main">
			<section id="news">
				<c:forEach var="news" items="${listNews}" begin="0" end="2">
					<c:url var="readLink" value="/news/read">
						<c:param name="newsId" value="${news.id}" />
					</c:url>
					<h1>
						<c:out value="${news.title}" />
					</h1>
					<h2>
						<c:out value="${news.brief}" />
					</h2>
					<a href="${readLink}">Read</a>
					<hr>
				</c:forEach>
			</section>
		</div>
	</main>
	<footer>© IT-Academy task | WebApp: Spring+, 2021 </footer>
</body>
</html>