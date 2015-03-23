package pl.wybornie.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import pl.wybornie.entity.cookBook.CookBook;
import pl.wybornie.entity.cookBook.UserCookBook;

@SuppressWarnings("serial")
@Entity
public class User extends EntityBean {

	private String nick;
	private String email;
	private String password;
	private String firstName;
	private String lastName;
	private Date birthDate;
	
	@OneToOne
	private City city;
	
	@OneToOne
	private CookBook cookBook;
	
	@OneToMany(fetch=FetchType.EAGER, mappedBy="userCookBook")
	private List<UserCookBook> userCookBooks = new ArrayList<UserCookBook>();

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public CookBook getCookBook() {
		return cookBook;
	}

	public void setCookBook(CookBook cookBook) {
		this.cookBook = cookBook;
	}

	public List<UserCookBook> getUserCookBooks() {
		return userCookBooks;
	}

	public void setUserCookBooks(List<UserCookBook> userCookBooks) {
		this.userCookBooks = userCookBooks;
	}
}
