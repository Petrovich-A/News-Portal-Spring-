<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<title>Add news page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=" UTF-8"/>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,800" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/addNews.css"/>" />
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
			</ul>
		</div>
	</div>
	<main>
		<section id="news">
			<h1>Добавьте новость</h1>
			<form:form action="create" modelAttribute="news" method="POST">
				<br />
				<h2>Title</h2>
				<textarea name="title" rows="2" cols="60" required form="txtarea">${news.title}
							</textarea>
				<br />
				<h2>Brief</h2>
				<textarea name="brief" rows="3" cols="60" required form="txtarea">${news.brief}
							</textarea>
				<br />
				<h2>Content</h2>

				<textarea name="content" rows="6" cols="60" required form="txtarea">${news.content}
							</textarea>
				<br />
				<h2>Author</h2>
				<textarea name="author" rows="2" cols="60" required form="txtarea">${news.content}
							</textarea>
				<br />
				<div class="button">
					<input  type="submit" value="Submit" class="create" />
				</div>
			</form:form>
		</section>
	</main>
	<footer>© IT-Academy task | WebApp: Spring+, 2021 </footer>

</body>
</html>