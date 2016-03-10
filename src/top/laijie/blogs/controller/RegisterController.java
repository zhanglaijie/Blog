package top.laijie.blogs.controller;

import java.text.ParseException;  
  
import javax.annotation.Resource;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;  
import org.springframework.web.servlet.ModelAndView;  

import top.laijie.blogs.domain.User;
import top.laijie.blogs.service.UserService;
import top.laijie.blogs.tool.ServiceException;
  
  
@Controller  
@RequestMapping("/user")
public class RegisterController {  
      
    @Resource  
    private UserService service;  
      
    @RequestMapping(value="/register",method={RequestMethod.GET,RequestMethod.POST})  
    public ModelAndView  load(HttpServletRequest request,HttpServletResponse response,User user) throws ParseException{  
        String action = request.getParameter("action");  
        System.out.println("-----r----"+action);  
        ModelAndView mav=new ModelAndView();  
  
        if("register".equals(action)) {  
            //注册  
            String email = request.getParameter("email");  
            service.processregister(user);//发邮箱激活  
            mav.addObject("text","注册成功");
            //拼接邮件服务器地址
            String url[] = user.getEmail().split("@");
           StringBuffer burl =new StringBuffer();
           burl.append("http://mail.").append(url[1]);
            mav.addObject("mailurl",burl );
            mav.setViewName("register/register_success.jsp");  
        }   
        else if("activate".equals(action)) {  
            //激活  
            String email = request.getParameter("email");//获取email  
            String validateCode = request.getParameter("validateCode");//激活码  
              
            try {  
                service.processActivate(email , validateCode);//调用激活方法  
                mav.setViewName("register/activate_success.jsp");  
            } catch (ServiceException e) {  
                request.setAttribute("message" , e.getMessage());  
                mav.setViewName("register/activate_failure.jsp");  
            }  
              
        }  
        return mav;  
    }  
      
  
}  