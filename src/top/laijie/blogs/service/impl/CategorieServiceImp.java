package top.laijie.blogs.service.impl;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import top.laijie.blogs.domain.Categories;
import top.laijie.blogs.domain.User;
import top.laijie.blogs.service.CategorieService;
import top.laijie.blogs.tool.BasicService;


@Service
public class CategorieServiceImp extends BasicService<Categories> implements CategorieService{
	
	
	public void createPost(Categories categories){
		super.save(categories);
	}
	
	protected  Class<Categories> getEntityClass(){
		return Categories.class;
	}
}
