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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * @author Jason.Zhu
 * @date   2013-7-1下午1:37:15
 * @email jasonzhu@augmentum.com.cn
 */
@Entity
@Table(name = "b_category")
public class Category {

	private int id;
	private String name;
	private Category parent;
	private Set<Category> children = new HashSet<Category>();
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
	@ManyToOne(cascade = {CascadeType.MERGE,CascadeType.PERSIST})
	@JoinColumn(name="parentId")
	public Category getParent() {
		return parent;
	}
	public void setParent(Category parent) {
		this.parent = parent;
	}
	@OneToMany(cascade = CascadeType.ALL,mappedBy = "parent",fetch=FetchType.LAZY)
	public Set<Category> getChildren() {
		return children;
	}
	public void setChildren(Set<Category> children) {
		this.children = children;
	}
	
	
}
