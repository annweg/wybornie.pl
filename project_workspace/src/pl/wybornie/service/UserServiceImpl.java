package pl.wybornie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pl.wybornie.dao.UserDAO;
import pl.wybornie.entity.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;

	public User getUser(String login) {
		return userDAO.getUser(login);
	}

	@Override
	public void saveOrUpdateUser(User user) {
		this.userDAO.saveOrUpdateUser(user);
	}

	@Override
	public List<?> getUserByEmail(String email) {
		return this.userDAO.getUserByEmail(email);
	}

	@Override
	public List<?> getUserByLogin(String login) {
		return this.userDAO.getUserByLogin(login);
	}

}