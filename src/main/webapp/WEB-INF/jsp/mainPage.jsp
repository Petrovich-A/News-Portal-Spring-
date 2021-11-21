<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<title>Main Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" />
</head>

<body>
	<header>
		<nav>
			<ul>
				<li><a href="<c:url value="/news/goToMainPage"/>">HOME</a></li>
				<li><a href="<c:url value="/news/goToAddNewsPage"/>">ADD NEWS</a></li>
			</ul>
		</nav>
	</header>
	<main>
		<section id="news">
			<c:forEach var="news" items="${listNews}" begin="0" end="1">
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
	</main>
	<footer>© IT-Academy task | WebApp: Spring+, 2021 </footer>

</body>
</html>