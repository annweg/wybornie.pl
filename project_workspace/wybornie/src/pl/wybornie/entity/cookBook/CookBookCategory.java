package pl.wybornie.entity.cookBook;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import pl.wybornie.entity.EntityBean;

@SuppressWarnings("serial")
@Entity
public class CookBookCategory extends EntityBean {

	@ManyToOne
	private Category category;
	@ManyToOne
	private CookBook cookBook;
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public CookBook getCookBook() {
		return cookBook;
	}
	public void setCookBook(CookBook cookBook) {
		this.cookBook = cookBook;
	}
	
}
