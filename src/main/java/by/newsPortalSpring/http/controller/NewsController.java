package by.newsPortalSpring.http.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/news")
public class NewsController {
	@RequestMapping("/goToMainPage")
	public String sayHelloy() {
		return "mainPage";
	}
	
	@RequestMapping("/goToAddNewsPage")
	public String goToAddNewsPage() {
		return "addNewsPage";
	}

}
