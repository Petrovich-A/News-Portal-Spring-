package by.newsPortalSpring.http.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import by.newsPortalSpring.http.entity.News;
import by.newsPortalSpring.http.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsController {

	@Autowired
	private NewsService newsService;

	@RequestMapping("/goToMainPage")
	public String goToMainPage(Model model) {
		List<News> listNews = newsService.readAll();
		model.addAttribute("listNews", listNews);
		return "mainPage";
	}

	@GetMapping("/goToAddNewsPage")
	public String goToAddNewsPage() {
		return "addNewsPage";
	}

	@GetMapping("/read")
	public String readNews(@RequestParam("newsId") int id, Model model) {
		News news = newsService.read(id);
		model.addAttribute("news", news);
		return "readFullNewsPage";
	}

	@PostMapping("/create")
	public String createNews(@ModelAttribute("news") News news) {
		newsService.create(news);
		return "redirect:/news/goToMainPage";
	}

	@GetMapping("/update")
	public String showFormForUpdate(@RequestParam("newsId") int id, Model model) {
		News news = newsService.read(id);
		model.addAttribute("news", news);
		return "addNewsPage";
	}

	@GetMapping("/delete")
	public String deleteNews(@ModelAttribute("newsId") int id) {
		newsService.delete(id);
		return "redirect:/news/goToMainPage";
	}

}
