package pl.wybornie.entity.cookBook;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

import pl.wybornie.entity.EntityBean;

@SuppressWarnings("serial")
@Entity
public class CategoryGroup extends EntityBean {

	private String name_pl;
	private String name_en;
	private String name_de;
	
	@OneToMany(fetch=FetchType.EAGER, mappedBy="category")
	private List<Category> categories = new ArrayList<Category>();

	public String getName_pl() {
		return name_pl;
	}

	public void setName_pl(String name_pl) {
		this.name_pl = name_pl;
	}

	public String getName_en() {
		return name_en;
	}

	public void setName_en(String name_en) {
		this.name_en = name_en;
	}

	public String getName_de() {
		return name_de;
	}

	public void setName_de(String name_de) {
		this.name_de = name_de;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}
}
