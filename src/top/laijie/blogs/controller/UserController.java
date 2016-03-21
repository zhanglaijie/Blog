package top.laijie.blogs.controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.bson.json.JsonWriter;
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
import top.laijie.blogs.tool.UserUtils;

@Controller  
@RequestMapping("/userController") 
public class UserController {  
	private static Logger logger = Logger.getLogger(UserController.class.getName());     
    @Autowired  
    UserServiceImpl userService;   
    
    /** 
     * 指向登录页面 
     */  
    @RequestMapping(value = "/login.do")  
    public String getLoginPage( @RequestParam(value = "error" , required = false) boolean error,  
            ModelMap model) {  
  
        logger.info("Received request to show login page");  
  
        if (error == true) {  
            // Assign an error message  
            model.put("error",  
                    "未验证或密码错误");  
        } else {  
            model.put("error", "");  
        }  
        return "/login.jsp";  
  
    }  
    /**
     * 管理页面
     * @return
     */
    @RequestMapping("/admin")
    public String admin(){  
    	System.out.println("---");
    //	Page<User> page =  userService.getPage(1,5,new User());
    //	System.out.println(page.getDatas().size());
        return "/front/laijie.jsp";
    }     
    @RequestMapping("/save")  
    public String saveUser(User user){  
           
    	userService.save(user); 
           
        logger.info("save:"+user);   
        return "/back/index.jsp";
    }  
    @RequestMapping("/backIndex.do")  
    public String back(User user){  
         
        return "/back/index.jsp";
    }  
    /**
     * 指向个人信息明细   
     * @param user
     * @return
     */
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
    @RequestMapping("/qingru")  
    public void qiru(User user,HttpServletRequest request,HttpServletResponse response) throws IOException{  
           
        String a = request.getParameter("id"); 
        logger.info("find:"+a); 
       // userService.updateUserByEmail(user.getEmail());  
        PrintWriter writer = response.getWriter();
        StringBuffer buffer = new StringBuffer();
        //buffer.append())
       writer.write("{\"id\":1}");
    }  
    /** 
     * 跳转到commonpage页面 
     *  
     * @return 
     */  
    @RequestMapping(value = "/common", method = RequestMethod.GET)  
    public String getCommonPage() {  
        logger.info("Received request to show common page");  
        logger.info(UserUtils.getCurrentLoginName());
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
     * 指定无访问额权限页面 
     *  
     * @return 
     */  
    @RequestMapping(value = "/denied", method = RequestMethod.GET)  
    public String getDeniedPage() {  
  
        logger.info("Received request to show denied page");  
  
        return "/authority/deniedpage.jsp";  
  
    }  
    /**
     * About_me
     */
    @RequestMapping("about_me.do")
    public String about_me(){
    	
		return "/back/about_me.jsp";
    }
}  