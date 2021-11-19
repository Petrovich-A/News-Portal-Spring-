package by.newsPortalSpring.http.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import by.newsPortalSpring.http.entity.News;

@Repository
public class NewsDAOImpl implements NewsDAO {

	@Autowired
//	private SessionFactory

	@Override
	public List<News> readAll() {
		// TODO Auto-generated method stub
		return null;
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
