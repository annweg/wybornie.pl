package pl.wybornie.entity.cookBook;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import pl.wybornie.entity.EntityBean;
import pl.wybornie.entity.User;

@SuppressWarnings("serial")
@Entity
public class CookBook extends EntityBean {

	private String description_pl;
	private String description_en;	
	private String description_de;
	
	@OneToOne
	private User user;
	
	@OneToMany
	private Recipe recipe;
	
	@OneToMany(fetch=FetchType.EAGER, mappedBy="cookBookRecipe")
	private List<CookBookRecipe> recipes = new ArrayList<CookBookRecipe>();

	public String getDescription_pl() {
		return description_pl;
	}

	public void setDescription_pl(String description_pl) {
		this.description_pl = description_pl;
	}

	public String getDescription_en() {
		return description_en;
	}

	public void setDescription_en(String description_en) {
		this.description_en = description_en;
	}

	public String getDescription_de() {
		return description_de;
	}

	public void setDescription_de(String description_de) {
		this.description_de = description_de;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Recipe getRecipe() {
		return recipe;
	}

	public void setRecipe(Recipe recipe) {
		this.recipe = recipe;
	}

	public List<CookBookRecipe> getRecipes() {
		return recipes;
	}

	public void setRecipes(List<CookBookRecipe> recipes) {
		this.recipes = recipes;
	}
}
