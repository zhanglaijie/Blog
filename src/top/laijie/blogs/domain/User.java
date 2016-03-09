package top.laijie.blogs.domain;

import java.beans.Transient;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Document;

import top.laijie.blogs.tool.Basic;
 
   

@Document
public class User extends Basic implements Serializable{  
    private static final long serialVersionUID = 1L;   
    private String uid;  
    private String username;  
    private String password;
    private String nicename;
    private String email;
    
    /**
     * 激活状态  0-未激活
     *		  1-激活成功
     *		  2-该博客涉嫌违规,已关闭	 
     */
    private int status=0;
    private String validateCode;//激活码  
    private Date  registerTime;//注册时间 
    private String blogname;
    private String blogaddress;
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNicename() {
		return nicename;
	}
	public void setNicename(String nicename) {
		this.nicename = nicename;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBlogname() {
		return blogname;
	}
	public void setBlogname(String blogname) {
		this.blogname = blogname;
	}
	public String getBlogaddress() {
		return blogaddress;
	}
	public void setBlogaddress(String blogaddress) {
		this.blogaddress = blogaddress;
	}
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getValidateCode() {
		return validateCode;
	}
	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}
	public Date getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password="
				+ password + ", nicename=" + nicename + ", email=" + email
				+ ", blogname=" + blogname + ", blogaddress=" + blogaddress
				+ "]";
	}
	@Transient  
    public Date getLastActivateTime() {  
        Calendar cl = Calendar.getInstance();  
        cl.setTime(registerTime);  
        cl.add(Calendar.DATE , 2);  
          
        return cl.getTime();  
    }  
}