package top.laijie.blogs.service.impl;


import java.util.List;

import org.bson.types.ObjectId;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import top.laijie.blogs.domain.Posts;
import top.laijie.blogs.domain.User;
import top.laijie.blogs.service.PostsService;
import top.laijie.blogs.service.UserService;
import top.laijie.blogs.tool.BasicService;


@Service 
public class PostsServiceImpl extends BasicService<Posts> implements PostsService{
	
	 public Posts loadPosts(ObjectId _id){
		  return mongoTemplate.findOne(new Query(Criteria.where("_id").is(_id)), Posts.class);
	 }

	public void createPost(Posts posts) {
		this.save(posts);
		
	}

	public List<Posts> listPosts() {
		// TODO Auto-generated method stub
		return this.findAll();
	}
}
