package top.laijie.blogs.controller;

import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

import javax.annotation.Resource;

import org.bson.types.ObjectId;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import top.laijie.blogs.domain.Posts;
import top.laijie.blogs.service.PostsService;
import top.laijie.blogs.service.UserService;

@Controller  
@RequestMapping("/posts") 
public class PostsController {
	 private static Logger logger = Logger.getLogger(UserController.class.getName());  
	 @Resource  
	private PostsService service;
	 
	 @RequestMapping(value="/loadPosts.do",method={RequestMethod.GET,RequestMethod.POST})  
	 public void loadPostById(){
		ObjectId _id = new ObjectId("56e24b51b2fcc518ac5e00fa"); 
		Posts posts = service.loadPosts(_id); 
		logger.info(posts.toString());
	 }
	 
	 @RequestMapping(value="/createPost.do",method={RequestMethod.GET,RequestMethod.POST})  
	 public void createPost(){
		
		Posts posts = new Posts("伟大的一天", "假如我", "我",0,"随笔","张来杰", new Date(), new Date(),"文学 艺术",300);
		service.createPost(posts);
		logger.info(posts.toString());
	 }
	 
	 @RequestMapping(value="/listPosts.do",method={RequestMethod.GET,RequestMethod.POST})  
	 public void listPost(){
		//ObjectId _id = new ObjectId("56e24b51b2fcc518ac5e00fa"); 
		List<Posts> postlist = service.listPosts(); 
		logger.info(postlist.toString());
	 }
}
