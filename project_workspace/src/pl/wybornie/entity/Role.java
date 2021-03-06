package pl.wybornie.entity;

import java.util.Set;

import javax.persistence.*;


@Entity
@Table(name="roles")
public class Role {
     
    @Id
    @GeneratedValue
    private Long id;
     
    private String role;
     
    @OneToMany(cascade=CascadeType.ALL)
    @JoinTable(name="user_roles", 
        joinColumns = {@JoinColumn(name="role_id", referencedColumnName="id")},
        inverseJoinColumns = {@JoinColumn(name="user_id", referencedColumnName="id")}
    )
    private Set<User> userRoles;
 
    public Long getId() {
        return id;
    }
 
    public void setId(Long id) {
        this.id = id;
    }
 
    public String getRole() {
        return role;
    }
 
    public void setRole(String role) {
        this.role = role;
    }
 
    public Set<User> getUserRoles() {
        return userRoles;
    }
 
    public void setUserRoles(Set<User> userRoles) {
        this.userRoles = userRoles;
    }
     
}