package top.laijie.blogs.domain;

import java.io.Serializable;

import top.laijie.blogs.tool.Basic;

public class Categories extends Basic implements Serializable{
	/**
	 * 分类
	 */
	private static final long serialVersionUID = -8755669364939904701L;
	private int Parents;
	private String title;
	private String description;
	private int visible;
	private int count;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getVisible() {
		return visible;
	}
	public void setVisible(int visible) {
		this.visible = visible;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Categories() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Categories(String title, String description, int visible, int count) {
		super();
		this.title = title;
		this.description = description;
		this.visible = visible;
		this.count = count;
	}
	@Override
	public String toString() {
		return "Categories [title=" + title + ", description=" + description
				+ ", visible=" + visible + ", count=" + count + "]";
	}
	
}
