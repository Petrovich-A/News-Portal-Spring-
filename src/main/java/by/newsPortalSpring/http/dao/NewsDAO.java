package by.newsPortalSpring.http.dao;

import java.util.List;

import by.newsPortalSpring.http.entity.News;

public interface NewsDAO {

	public List<News> readAll();

	public void create(News news);

	public News read(int Id);

	public News update(int Id);

	public void delete(int Id);

}
