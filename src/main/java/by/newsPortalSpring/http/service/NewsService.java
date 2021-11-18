package by.newsPortalSpring.http.service;

import java.util.List;

import by.newsPortalSpring.http.entity.News;

public interface NewsService {
	public List<News> readAll();

	public void create(News news);
	
	public News read(int id);
	
	public void update(News news);

	public void delete(int id);
}
