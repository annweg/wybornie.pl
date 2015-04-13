package pl.wybornie.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="timeConsuming")
public class TimeConsuming {

	@Id
	@GeneratedValue
	private Long id;
	
	private String name_pl;
	private String name_en;
	private String name_de;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
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
}
