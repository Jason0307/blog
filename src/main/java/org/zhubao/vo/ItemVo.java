package org.zhubao.vo;

public class ItemVo {

	private int id;
	private long itemId;
	private String name;
	private String description;
	private String oper;
	private String trait;
	private int type;
	private int unlockLevel;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public long getItemId() {
		return itemId;
	}
	public void setItemId(long itemId) {
		this.itemId = itemId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getOper() {
		return oper;
	}
	public void setOper(String oper) {
		this.oper = oper;
	}
	public String getTrait() {
		return trait;
	}
	public void setTrait(String trait) {
		this.trait = trait;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getUnlockLevel() {
		return unlockLevel;
	}
	public void setUnlockLevel(int unlockLevel) {
		this.unlockLevel = unlockLevel;
	}
	@Override
	public String toString() {
		return "ItemVo [description=" + description + ", id=" + id
				+ ", itemId=" + itemId + ", name=" + name + ", oper=" + oper
				+ ", trait=" + trait + ", type=" + type + ", unlockLevel="
				+ unlockLevel + "]";
	}
	
	
	
}
