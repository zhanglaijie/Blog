package top.laijie.blogs.controller;

import java.util.logging.Logger;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 * 匹配个人主页功能
 * @author laijie
 *
 */
@Controller
@RequestMapping("")
public class IndexPageController {
	 private static Logger logger = Logger.getLogger(IndexPageController.class.getName());  
	@RequestMapping(value="/{name}", method = {RequestMethod.GET})
	public ModelAndView getDetail(@PathVariable("name") String name){
	    
	    ModelAndView modelAndView = new ModelAndView();
	    logger.info(name);
	    //modelAndView.addObject("id", id);  
	    modelAndView.setViewName("detail");  //
	    modelAndView.setViewName("/front/laijie.jsp"); 
	    return modelAndView;
	}
}
