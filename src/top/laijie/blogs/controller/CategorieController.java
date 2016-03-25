package top.laijie.blogs.controller;
import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.bson.types.ObjectId;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import top.laijie.blogs.domain.Categories;
import top.laijie.blogs.domain.User;
import top.laijie.blogs.service.impl.CategorieServiceImp;
import top.laijie.blogs.service.impl.UserServiceImpl;

@Controller
@RequestMapping("/categorieController")
public class CategorieController {
	private static Logger logger = Logger.getLogger(IndexPageController.class.getName());
	@Resource  
	private CategorieServiceImp categorieServiceImp;
	@Autowired  
    UserServiceImpl userService;   
	@RequestMapping("/create_categorie.do")
	public String add_categorie(){
		
		User user = new User();
		//user.set_id(new ObjectId("56e552957094e533747a63d1"));
		Query query = new Query();
		User user2 = userService.findOne(query );
		System.out.println(user2);
		Categories categories = 
				new Categories(user2, 1, "java","action in java",1,500);
		categorieServiceImp.save(categories);
		logger.info(categories);
	    return null;
	}
	/**
	 * 显示分类
	 */
	@RequestMapping("/list_categorie.do")
	public String list_categorie(){
		return "/back/categorie_list.jsp";
	}
	
	
}
