package pl.wybornie.entity;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Recipe {
	
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
}
