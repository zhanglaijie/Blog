package top.laijie.blogs.domain;

import java.io.Serializable;

import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Reference;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;

import top.laijie.blogs.tool.Basic;
@Document
public class Categories extends Basic implements Serializable{
	private static final long serialVersionUID = -8755669364939904701L;
	/**
	 * 分类
	 */
	@Reference
	private User user;
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
		_id= new ObjectId();
		// TODO Auto-generated constructor stub
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getParents() {
		return Parents;
	}
	public void setParents(int parents) {
		Parents = parents;
	}
	@Override
	public String toString() {
		return "Categories [user=" + user + ", Parents=" + Parents + ", title="
				+ title + ", description=" + description + ", visible="
				+ visible + ", count=" + count + "]";
	}
	public Categories(User user, int parents, String title, String description,
			int visible, int count) {
		super();
		this.user = user;
		Parents = parents;
		this.title = title;
		this.description = description;
		this.visible = visible;
		this.count = count;
	}
	
}
