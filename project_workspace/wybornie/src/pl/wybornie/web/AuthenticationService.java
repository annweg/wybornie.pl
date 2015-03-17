package pl.wybornie.web;

import org.springframework.dao.DataAccessException;
import org.springframework.security.userdetails.UserDetails;
import org.springframework.security.userdetails.UserDetailsService;
import org.springframework.security.userdetails.UsernameNotFoundException;

public class AuthenticationService implements UserDetailsService {

	@Override
	public UserDetails loadUserByUsername(String arg0)	throws UsernameNotFoundException, DataAccessException {
		
		return null;
	}

}
