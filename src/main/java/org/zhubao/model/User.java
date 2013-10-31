/**
 * 
 */
package org.zhubao.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * @author Jason.Zhu
 * @date   2013-5-8下午1:56:57
 * @email jasonzhu@augmentum.com.cn
 */
@Entity
@Table(name="users")
public class User {

	private int id;
	private int enable;
	private String username;
	private String account;
	private String password;
	private Set<Role> roles = new HashSet<Role>();
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
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@ManyToMany(cascade={CascadeType.PERSIST,CascadeType.MERGE},fetch=FetchType.LAZY)
	@JoinTable(name="users_roles",joinColumns={@JoinColumn(name="user_id")},inverseJoinColumns={@JoinColumn(name="role_id")})
	public Set<Role> getRoles() {
		return roles;
	}
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @param id
	 * @param username
	 */
	public User(int id, String username) {
		super();
		this.id = id;
		this.username = username;
	}
	
	
	
}
