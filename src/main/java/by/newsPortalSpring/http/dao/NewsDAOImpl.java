package by.newsPortalSpring.http.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;

import by.newsPortalSpring.http.entity.News;

@Repository
public class NewsDAOImpl implements NewsDAO {

	@Autowired
	private SessionFactory sessionFactory;
	private News news;

	@Bean
	public News getBean() {
		News news = new News();
		news.setId(1);
		news.setTitle("titleExmpl");
		news.setBrief("briefExmpl");
		news.setContent("contentExmpl");
		news.setAuthor("authorExmpl");
		return news;
	}

	@Override
	public List<News> readAll() {
		Session session = sessionFactory.getCurrentSession();
		Query<News> query = session.createQuery("from News", News.class);
		List<News> news = query.getResultList();
		return news;
	}

	@Override
	public void create(News news) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(news);
	}

	@Override
	public News read(int id) {
		Session session = sessionFactory.getCurrentSession();
		News news = session.get(News.class, id);
		return news;
	}

	@Override
	public News update(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(int id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("delete from News where id=:newsId");
		query.setParameter("newsId", id);
		query.executeUpdate();
	}

}
