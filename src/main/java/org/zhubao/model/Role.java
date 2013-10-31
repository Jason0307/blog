/**
 * 
 */
package org.zhubao.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * @author Jason.Zhu
 * @date   2013-5-8下午1:58:17
 * @email jasonzhu@augmentum.com.cn
 */
@Entity
@Table(name="roles")
public class Role {

	private int id;
	private int enable;
	private String name;
	private Set<User> users = new HashSet<User>();
	private Set<Resource> resources = new HashSet<Resource>();
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEnable() {
		return enable;
	}
	public void setEnable(int enable) {
		this.enable = enable;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@ManyToMany(cascade={CascadeType.PERSIST,CascadeType.MERGE},mappedBy = "roles")
	public Set<User> getUsers() {
		return users;
	}
	public void setUsers(Set<User> users) {
		this.users = users;
	}
	@ManyToMany(cascade={CascadeType.PERSIST,CascadeType.MERGE})
	@JoinTable(name="roles_resources",joinColumns={@JoinColumn(name="role_id")},inverseJoinColumns={@JoinColumn(name="resource_id")})
	public Set<Resource> getResources() {
		return resources;
	}
	public void setResources(Set<Resource> resources) {
		this.resources = resources;
	}
	
	
	
	
			
}
