package top.laijie.blogs.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import top.laijie.blogs.domain.User;
import top.laijie.blogs.service.impl.UserServiceImpl;
/**
 * 匹配个人主页功能
 * @author laijie
 *
 */
@Controller
@RequestMapping("")
public class IndexPageController {
	 private static Logger logger = Logger.getLogger(IndexPageController.class.getName());  
	 @Autowired  
	 private UserServiceImpl userService;   
	 @RequestMapping(value="/{name}", method = {RequestMethod.GET})
	public String getDetail(@PathVariable("name") String name,ModelMap map){
	    logger.info(name);
	    Query query = new Query();  
        query.addCriteria(Criteria.where("blogaddress").is(name));  
	    User user = userService.findOne(query);
	    if(user!=null){
	    	 map.addAttribute("user", user);
	 	    return "/front/laijie.jsp";
	    }
	    else{
	    	return "/register/activate_failure.jsp";
	    }
	   
	}
}
