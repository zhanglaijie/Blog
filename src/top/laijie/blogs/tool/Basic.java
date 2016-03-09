package top.laijie.blogs.tool;

import org.springframework.data.annotation.Id;

public class Basic {
	
	@Id
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
}
