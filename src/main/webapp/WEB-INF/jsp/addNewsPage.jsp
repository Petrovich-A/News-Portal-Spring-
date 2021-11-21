<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<title>Add news page</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" />

</head>

<body>
	<header>
		<nav>
			<ul>
				<li><a href="goToMainPage">HOME</a></li>
			</ul>
		</nav>
	</header>
	<main>
		<section id="news">
			<h1>Добавьте новость</h1>
			<form:form action="create" modelAttribute="news" method="POST">
				<br />
				<p>Enter Title</p>
				<textarea name="title" rows="2" cols="45" required form="txtarea">${news.title}
							</textarea>
				<br />
				<p>Enter Brief</p>
				<textarea name="brief" rows="3" cols="45" required form="txtarea">${news.brief}
							</textarea>
				<br />
				<p>Enter Content</p>

				<textarea name="content" rows="5" cols="45" required form="txtarea">${news.content}
							</textarea>
				<br />
				<p>Enter Author</p>
				<textarea name="author" rows="1" cols="45" required form="txtarea">${news.content}
							</textarea>
				<br />
				<input type="submit" value="Submit" class="create" />
			</form:form>
		</section>
	</main>
	<footer>© IT-Academy task | WebApp: Spring+, 2021 </footer>

</body>
</html>