package pl.wybornie.service;

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

}