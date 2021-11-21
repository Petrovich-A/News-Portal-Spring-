package by.newsPortalSpring.http.dao;

import java.util.List;

import javax.annotation.PostConstruct;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import by.newsPortalSpring.http.entity.News;

@Repository
public class NewsDAOImpl implements NewsDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<News> readAll() {
		Session session = sessionFactory.getCurrentSession();
		Query<News> query = session.createQuery("from News", News.class);
		List<News> news = query.getResultList();
		System.out.println(news);
		return news;
	}

	@Override
	public void create(News news) {
		// TODO Auto-generated method stub

	}

	@Override
	public News read(int Id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public News update(int Id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub

	}

}
