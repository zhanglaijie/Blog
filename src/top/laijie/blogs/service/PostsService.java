package top.laijie.blogs.service;

import java.text.ParseException;
import java.util.List;

import org.bson.types.ObjectId;

import top.laijie.blogs.domain.Posts;
import top.laijie.blogs.domain.User;
import top.laijie.blogs.tool.ServiceException;


public interface PostsService{
	
	public Posts loadPosts(ObjectId _id);

	public void createPost(Posts posts);

	public List<Posts> listPosts();
}
