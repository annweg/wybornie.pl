package pl.wybornie.entity.cookBook;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import pl.wybornie.entity.EntityBean;
import pl.wybornie.entity.User;

@SuppressWarnings("serial")
@Entity
public class UserCookBook extends EntityBean {
	
	@ManyToOne
	private User user;
	
	@ManyToOne
	private CookBook cookBook;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public CookBook getCookBook() {
		return cookBook;
	}
	public void setCookBook(CookBook cookBook) {
		this.cookBook = cookBook;
	}
}
