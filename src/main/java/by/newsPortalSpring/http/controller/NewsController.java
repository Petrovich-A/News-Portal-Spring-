package by.newsPortalSpring.http.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import by.newsPortalSpring.http.entity.News;
import by.newsPortalSpring.http.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsController {

	@Autowired
	private NewsService newsService;

//	@RequestMapping("/goToMainPage")
//	public String goToMainPage() {
//		return "mainPage";
//	}

	@RequestMapping("/goToAddNewsPage")
	public String goToAddNewsPage() {
		return "addNewsPage";
	}

	@RequestMapping("/goToMainPage")
	public String listCustomers(Model model) {
		List<News> listNews = newsService.readAll();
		model.addAttribute("listNews", listNews);
		return "mainPage";
	}

}
