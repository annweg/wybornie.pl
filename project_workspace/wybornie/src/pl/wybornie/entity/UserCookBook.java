package pl.wybornie.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class UserCookBook {
	
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
