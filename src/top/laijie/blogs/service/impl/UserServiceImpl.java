package top.laijie.blogs.service.impl;

import java.text.ParseException;
import java.util.Date;

import org.springframework.data.mongodb.core.query.Criteria;  
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;  

import top.laijie.blogs.domain.User;
import top.laijie.blogs.service.UserService;
import top.laijie.blogs.tool.BasicService;
import top.laijie.blogs.tool.MD5Util;
import top.laijie.blogs.tool.SendEmail;
import top.laijie.blogs.tool.ServiceException;
  
	@Service   
	public class UserServiceImpl extends BasicService<User> implements UserService  {  
	       
	       
	    /** 
	     *  
	     * @param name 
	     * @return  
	     */  
	    public User findUserByName(String nicename){  
	           
	        return mongoTemplate.findOne(new Query(Criteria.where("nicename").is(nicename)), User.class, USER_COLLECTION);  
	           
	    } 
	    
	    public void test(){
	    	System.out.println("--");
	    }

		public void updateUserByName(String nicename) {
			// TODO Auto-generated method stub
			Query query = new Query();  
	        query.addCriteria(Criteria.where("nicename").is(nicename));  
	        User user = mongoTemplate.findOne(query, User.class,USER_COLLECTION);  
	        user.setStatus(4);  
	        mongoTemplate.save(user, USER_COLLECTION);

		}

		public void updateUserByEmail(String email) {
			// TODO Auto-generated method stub
			Query query = new Query();  
	        query.addCriteria(Criteria.where("email").is(email));  
	        User user = mongoTemplate.findOne(query, User.class,USER_COLLECTION);  
	        user.setStatus(5);  
	        mongoTemplate.save(user, USER_COLLECTION);

		}  
		
		  /** 
	     * 处理注册 
	     */  
	   
	    public void processregister(User user){  
	        user.setRegisterTime(new Date());  
	        user.setStatus(0);  
	        ///如果处于安全，可以将激活码处理的更复杂点，这里我稍做简单处理  
	        //user.setValidateCode(MD5Tool.MD5Encrypt(email));  
	        user.setValidateCode(MD5Util.encode2hex(user.getEmail()));  
	          
	        this.save(user);
	          
	        ///邮件的内容  
	        StringBuffer sb=new StringBuffer("点击下面链接激活账号，48小时生效，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");  
	        sb.append("<a href=\"http://localhost:8080/Blogs/user/register?action=activate&email=");  
	        sb.append(user.getEmail());   
	        sb.append("&validateCode=");   
	        sb.append(user.getValidateCode());  
	        sb.append("\">http://localhost:8080/Blogs/user/register?action=activate&email=");   
	        sb.append(user.getEmail());  
	        sb.append("&validateCode=");  
	        sb.append(user.getValidateCode());  
	        sb.append("</a>");  
	          
	        //发送邮件  
	        SendEmail.send(user.getEmail(), sb.toString());  
	        System.out.println("发送邮件");  
	          
	    }  
	      
	    /** 
	     * 处理激活 
	     * @throws ParseException  
	     */  
	      ///传递激活码和email过来  
	    public void processActivate(String email , String validateCode)throws ServiceException, ParseException{    
	         //数据访问层，通过email获取用户信息  
	    	User user = mongoTemplate.findOne(new Query(Criteria.where("email").is(email)), User.class, USER_COLLECTION);  
	        //验证用户是否存在   
	        if(user!=null) {    
	            //验证用户激活状态    
	            if(user.getStatus()==0) {   
	                ///没激活  
	                Date currentTime = new Date();//获取当前时间    
	                //验证链接是否过期   
	                currentTime.before(user.getRegisterTime());  
	                if(currentTime.before(user.getLastActivateTime())) {    
	                    //验证激活码是否正确    
	                    if(validateCode.equals(user.getValidateCode())) {    
	                        //激活成功， //并更新用户的激活状态，为已激活   
	                        System.out.println("==sq==="+user.getStatus());  
	                        user.setStatus(1);//把状态改为激活  
	                        System.out.println("==sh==="+user.getStatus()); 
	                        
	                    this.updateUserByEmail(email);  
	                    } else {    
	                       throw new ServiceException("激活码不正确");    
	                    }    
	                } else { throw new ServiceException("激活码已过期！");    
	                }    
	            } else {  
	               throw new ServiceException("邮箱早已激活，请登录！");    
	            }    
	        } else {  
	            throw new ServiceException("该邮箱未注册（邮箱地址不存在）！");    
	        }    
	        
	    }   
	}

