package pl.wybornie.entity.cookBook;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import pl.wybornie.entity.EntityBean;

@SuppressWarnings("serial")
@Entity
public class CookBookRecipe extends EntityBean {

	@ManyToOne
	private CookBook cookBook;
	@ManyToOne
	private Recipe recipe;
	
	public CookBook getCookBook() {
		return cookBook;
	}
	public void setCookBook(CookBook cookBook) {
		this.cookBook = cookBook;
	}
	public Recipe getRecipe() {
		return recipe;
	}
	public void setRecipe(Recipe recipe) {
		this.recipe = recipe;
	}
}
