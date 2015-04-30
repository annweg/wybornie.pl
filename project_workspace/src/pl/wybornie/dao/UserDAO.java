package pl.wybornie.dao;

import java.util.List;

import pl.wybornie.entity.User;

public interface UserDAO {
	
	public User getUser(String login);
	public void saveOrUpdateUser(User user);
	@SuppressWarnings("rawtypes")
	public List getUserByEmail(String email);
	@SuppressWarnings("rawtypes")
	public List getUserByLogin(String login);
}