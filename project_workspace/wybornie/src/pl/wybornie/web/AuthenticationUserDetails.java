package pl.wybornie.web;

import org.springframework.dao.DataAccessException;
import org.springframework.security.userdetails.UsernameNotFoundException;

import pl.wybornie.entity.User;

public interface AuthenticationUserDetails {

	User loadUserByNickName(String nickName) throws UsernameNotFoundException, DataAccessException;
	User loadUserByEmail(String eMail) throws UsernameNotFoundException, DataAccessException;
}
