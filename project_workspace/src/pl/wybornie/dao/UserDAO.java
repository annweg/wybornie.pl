package pl.wybornie.dao;

import pl.wybornie.entity.User;

public interface UserDAO {
	
	public User getUser(String login);
	public void saveOrUpdateUser(User user);
}