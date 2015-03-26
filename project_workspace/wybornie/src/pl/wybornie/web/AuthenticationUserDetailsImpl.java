package pl.wybornie.web;

import org.springframework.dao.DataAccessException;
import org.springframework.security.userdetails.UsernameNotFoundException;

import pl.wybornie.entity.User;

public class AuthenticationUserDetailsImpl implements AuthenticationUserDetails {

	private User user; 
	
	@Override
	public User loadUserByNickName(String nickName)
			throws UsernameNotFoundException, DataAccessException {
		return null;
	}

	@Override
	public User loadUserByEmail(String eMail) throws UsernameNotFoundException,
			DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

}
