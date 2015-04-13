package pl.wybornie.entity;

import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class EntityBean {

	@Id
	@GeneratedValue
	private Long id;
	
	private Date created = new Date();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}
}
