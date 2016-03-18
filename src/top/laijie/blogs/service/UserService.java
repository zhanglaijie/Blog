package top.laijie.blogs.service;

import java.text.ParseException;

import top.laijie.blogs.domain.User;
import top.laijie.blogs.tool.ServiceException;


public interface UserService{
	
	 User findUserByName(String name);
	 public void updateUserByName(String nicename);
	 /** 
	     * 处理注册 
	     */
	 public void processregister(User user);
	 /** 
	     * 处理找回
	     */
	 public void processFindPassword(User user);
	 /** 
	     * 处理激活 
	     * @throws ParseException  
	     */  
	      ///传递激活码和email过来  
	 public void processActivate(String email , String validateCode) throws ServiceException, ParseException;
	 /**
	  * 用邮箱获取User
	  */
	public User getUserByEmail(String email);
	public User getUserByblogaddress(String blogaddress);
	public User getUserByEmailAndValidate(String email, String validateCode);
}
