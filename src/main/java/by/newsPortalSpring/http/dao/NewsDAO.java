package by.newsPortalSpring.http.dao;

import java.util.List;

import by.newsPortalSpring.http.entity.News;

public interface NewsDAO {

	public List<News> readAll();

	public void create(News news);

	public News read(int id);

	public void update(int id);

	public void delete(int id);

}
