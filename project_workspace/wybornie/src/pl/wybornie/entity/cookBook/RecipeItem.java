package pl.wybornie.entity.cookBook;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import pl.wybornie.entity.EntityBean;

@SuppressWarnings("serial")
@Entity
public class RecipeItem extends EntityBean {

	@ManyToOne
	private Recipe recipe;
	@ManyToOne
	private Ingredient ingredient;
	
	public Recipe getRecipe() {
		return recipe;
	}
	public void setRecipe(Recipe recipe) {
		this.recipe = recipe;
	}
	public Ingredient getIngredient() {
		return ingredient;
	}
	public void setIngredient(Ingredient ingredient) {
		this.ingredient = ingredient;
	}
}
