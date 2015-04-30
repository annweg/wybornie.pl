package pl.wybornie.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pl.wybornie.entity.User;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session openSession() {
		return sessionFactory.getCurrentSession();
	}	

	@SuppressWarnings("unchecked")
	public User getUser(String login) {
		List<User> userList = new ArrayList<User>();
		Query query = openSession().createQuery("from User u where u.login = :login");
		query.setParameter("login", login);
		userList = query.list();
		if (userList.size() > 0) {
			return userList.get(0);
		} else {
			return null;	
		}
	}

	@Override
	public void saveOrUpdateUser(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}

	@Override
	public List<?> getUserByEmail(String email) {
		String selectQuery = "SELECT email FROM user us WHERE us.email LIKE '" + email +"' ";
		Query query = openSession().createSQLQuery(selectQuery);
		return query.list();
	}

	@Override
	public List<?> getUserByLogin(String login) {
		String selectQuery = "SELECT email FROM user us WHERE us.login LIKE '" + login + "' ";
		Query query = openSession().createSQLQuery(selectQuery);
		return query.list();
	}
}