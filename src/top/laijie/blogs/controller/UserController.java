package top.laijie.blogs.controller;
import java.util.logging.Logger;  

import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.servlet.ModelAndView;  

import top.laijie.blogs.domain.User;
import top.laijie.blogs.server.impl.UserServiceImpl;
import top.laijie.blogs.tool.Page;


   
   
@Controller  
@RequestMapping("/user") 
public class UserController {  
       
       
    private static Logger logger = Logger.getLogger(UserController.class.getName());  
       
    @Autowired  
    UserServiceImpl userService;  
       
    @RequestMapping("/index")
    public String index(){  
    	System.out.println("---");
    	Page<User> page =  userService.getPage(1,5,new User());
    	System.out.println(page.getDatas().size());
        return "MyJsp.jsp";
    }  
       
    @RequestMapping("/save")  
    public String saveUser(User user){  
           
    	userService.save(user); 
           
        logger.info("save:"+user);   
        return "/back/index.jsp";
    }  
       
    @RequestMapping("/find")  
    public String findUser(User user){  
           
        user = userService.findUserByName(user.getNicename());  
       ((UserServiceImpl) userService).test();
        logger.info("find:"+user);  
           
        return "/back/index.jsp";
    }    
    @RequestMapping("/update")  
    public String updateUser(User user){  
           
           
        userService.updateUserByEmail(user.getEmail());  
        
        logger.info("find:"+user);  
        return "/back/index.jsp";  
    }  
}  