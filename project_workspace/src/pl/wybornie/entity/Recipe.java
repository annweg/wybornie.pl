package pl.wybornie.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="recipe")
public class Recipe extends EntityBean {
	
	private String description_pl;
	private String description_en;
	private String description_de;
	private int howManyFor;
	
	@OneToMany
	private Category category;
	
	@OneToOne
	private Difficulty difficulty;
	
	@OneToOne
	private TimeConsuming timeConsuming;
	
	@OneToMany(fetch=FetchType.EAGER, mappedBy="recipeCategory")
	private List<RecipeCategory> categories = new ArrayList<RecipeCategory>();
	
	@OneToMany(fetch=FetchType.EAGER, mappedBy="recipeItem")
	private List<RecipeItem> items = new ArrayList<RecipeItem>();

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

	public int getHowManyFor() {
		return howManyFor;
	}

	public void setHowManyFor(int howManyFor) {
		this.howManyFor = howManyFor;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Difficulty getDifficulty() {
		return difficulty;
	}

	public void setDifficulty(Difficulty difficulty) {
		this.difficulty = difficulty;
	}

	public TimeConsuming getTimeConsuming() {
		return timeConsuming;
	}

	public void setTimeConsuming(TimeConsuming timeConsuming) {
		this.timeConsuming = timeConsuming;
	}

	public List<RecipeCategory> getCategories() {
		return categories;
	}

	public void setCategories(List<RecipeCategory> categories) {
		this.categories = categories;
	}

	public List<RecipeItem> getItems() {
		return items;
	}

	public void setItems(List<RecipeItem> items) {
		this.items = items;
	}
}
