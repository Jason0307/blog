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
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * @author Jason.Zhu
 * @date   2013-5-8下午2:28:44
 * @email jasonzhu@augmentum.com.cn
 */
@Entity
@Table(name="resources")
public class Resource {

	private int id;
	private String name;
	private int type;
	private String memo;
	private String url;
	private int priority;
	private Set<Role> roles = new HashSet<Role>();
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	
	@ManyToMany(cascade={CascadeType.PERSIST,CascadeType.MERGE},mappedBy = "resources")
	public Set<Role> getRoles() {
		return roles;
	}
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	
	
}
