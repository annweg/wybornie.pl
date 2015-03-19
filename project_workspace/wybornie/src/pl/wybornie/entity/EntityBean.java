package pl.wybornie.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@SuppressWarnings("serial")
@MappedSuperclass
@org.hibernate.annotations.Proxy(lazy = false)
public class EntityBean implements Serializable {

	@Id()
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id = null;
	
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
