package pl.wybornie.entity;

import javax.persistence.Entity;

@SuppressWarnings("serial")
@Entity
public class Province extends EntityBean {

	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
