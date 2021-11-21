<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<title>Main Page</title>
<title>News</title>
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

			<hr>

			<h1>В США расследуют методы Instagram по вовлечению детей и подростков</h1>
			<h2>Как сообщает The Wall Street Journal, в США группа генеральных прокуроров из нескольких штатов расследует методы компании Meta (ранее
				Facebook), которыми она вовлекала молодых людей в Instagram. Регулятор собирается выяснить не было ли нарушений со стороны рекламных кампаний и
				как привлечение детей и подростков отразилось на их психическом здоровье.</h2>
			<h3>В первую очередь прокуроры акцентируют внимание на том, что методы, используемые соцсетью для удержания внимания на платформе, вредят
				эмоциональном состоянию молодых людей. Расследование началось после серии слитых внутренних документов Meta, которые опубликовала бывшая
				сотрудница компании — менеджеру по продукту Facebook Френсис Хауген. Так прокуроры обратили внимание на ту часть исследования, в которой
				говориться о том, что Instagram пагубно влияет на психику и самооценку девочек-подростков. Идеальные картинки на просторах социальной сети
				заставляют молодых девушек искать в себе недостатки, испытывать тревогу и чувствовать себя хуже. Зачастую это приводит детей к развитию
				расстройств пищевого поведения, самоповреждению и суицидальным мыслям. В ближайшее время группа прокуророво из более чем десяти штатов изучит
				механики Instagram на предмет нарушения прав потребителей и оценит общественные риски. Также планируется подробно изучить методы, с помощью
				которых социальная сеть удерживает подростков у экранов и побуждает листать ленту. Пресс-служба Instagram отреагировала на произошедшее и заявила,
				что обвинения со стороны прокуроров ложные и демонстрируют глубокое непонимание фактов. Также представители социальной сети заявили о том, что
				проблема влияние технологий на детей прослеживается во всем социальном сегменте Интернета, а сама Meta ищет способы того, как можно оградить
				молодых людей от вреда. В частности в пресс-службе обратили внимание на недавнее появление функции «Сделай перерыв», которая информирует
				пользователя о том, что следует отвлечься.</h3>
			<p>daniilshat</p>
		</section>
	</main>
	<footer>© IT-Academy WebApp Spring+, 2021 </footer>

</body>
</html>