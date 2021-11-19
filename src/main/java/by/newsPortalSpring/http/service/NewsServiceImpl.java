package by.newsPortalSpring.http.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import by.newsPortalSpring.http.dao.NewsDAO;
import by.newsPortalSpring.http.entity.News;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsDAO newsDAO;

	@Override
	@Transactional
	public List<News> readAll() {
		return newsDAO.readAll();
	}

	@Override
	@Transactional
	public void create(News news) {
		newsDAO.create(news);
	}

	@Override
	@Transactional
	public News read(int id) {
		return newsDAO.read(id);
	}

	@Override
	@Transactional
	public void update(News news) {
		// TODO Auto-generated method stub

	}

	@Override
	@Transactional
	public void delete(int id) {
		newsDAO.delete(id);
	}

}
