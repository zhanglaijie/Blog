package top.laijie.blogs.controller;
import java.util.logging.Logger;  

import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;  

import top.laijie.blogs.domain.User;
import top.laijie.blogs.service.impl.UserServiceImpl;
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
    /**
     * 管理页面
     * @return
     */
    @RequestMapping("/admin")
    public String admin(){  
    	System.out.println("---");
    	Page<User> page =  userService.getPage(1,5,new User());
    	System.out.println(page.getDatas().size());
        return "/front/laijie.jsp";
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
    
    /** 
     * 跳转到commonpage页面 
     *  
     * @return 
     */  
    @RequestMapping(value = "/common", method = RequestMethod.GET)  
    public String getCommonPage() {  
        logger.info("Received request to show common page");  
        return "/authority/commonpage.jsp";  
    }  
  
    /** 
     * 跳转到adminpage页面 
     *  
     * @return 
     */  
    @RequestMapping(value = "/admin", method = RequestMethod.GET)  
    public String getAadminPage() {  
        logger.info("Received request to show admin page");  
        return "/authority/adminpage.jsp";  
  
    }  
    
    /** 
     * 指向登录页面 
     */  
    @RequestMapping(value = "/login", method = RequestMethod.GET)  
    public String getLoginPage( @RequestParam(value = "error" , required = false) boolean error,  
            ModelMap model) {  
  
        logger.info("Received request to show login page");  
  
        if (error == true) {  
            // Assign an error message  
            model.put("error",  
                    "账号或密码错误");  
        } else {  
            model.put("error", "");  
        }  
        return "../../login.jsp";  
  
    }  
  
    /** 
     * 指定无访问额权限页面 
     *  
     * @return 
     */  
    @RequestMapping(value = "/denied", method = RequestMethod.GET)  
    public String getDeniedPage() {  
  
        logger.info("Received request to show denied page");  
  
        return "/authority/deniedpage.jsp";  
  
    }  
}  