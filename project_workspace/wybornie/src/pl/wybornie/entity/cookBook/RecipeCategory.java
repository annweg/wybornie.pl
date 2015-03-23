package pl.wybornie.entity.cookBook;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import pl.wybornie.entity.EntityBean;

@SuppressWarnings("serial")
@Entity
public class RecipeCategory extends EntityBean {
	
	@ManyToOne
	private Category category;
	@ManyToOne
	private Recipe recipe;
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Recipe getRecipe() {
		return recipe;
	}
	public void setRecipe(Recipe recipe) {
		this.recipe = recipe;
	}
}
