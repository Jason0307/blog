/**
 * 
 */
package org.zhubao.vo;

/**
 * @author Jason.Zhu
 * @date   2013-7-1下午4:11:29
 * @email jasonzhu@augmentum.com.cn
 */
public class CategoryVo {

	private int id;
	private int pid;
	private String name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "CategoryVo [id=" + id + ", pid=" + pid + ", name=" + name + "]";
	}
	
	
}
