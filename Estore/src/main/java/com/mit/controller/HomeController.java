package com.mit.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mit.dao.CartItemDao;
import com.mit.dao.ProductDao;
import com.mit.models.CartItem;
import com.mit.models.Category;

@Controller
public class HomeController {
	@Autowired
	private CartItemDao cartItemDao;
	@Autowired
	private ProductDao productDao;
	@RequestMapping(value= {"","/","home"})

	
		public String homePage(@AuthenticationPrincipal Principal principal,HttpSession session){
	        List<CartItem> cartItems=null;
	    	if(principal!=null){
	         cartItems=cartItemDao.getCartItems(principal.getName());
	    	session.setAttribute("cartSize",cartItems.size());
	    	
	    	}
	    	List<Category> categories=productDao.getAllCategories();
	    	session.setAttribute("categories", categories);
			return "index";
		}
	
	@RequestMapping(value="/aboutus")
	public String aboutus() {
		return "aboutus";
	}
	
	@RequestMapping("/login")
    public String login(){
    	return "login";
    }
    @RequestMapping("/loginerror")
    public String loginError(Model model){
    	model.addAttribute("loginError","Invalid Email/password");
    	return "login";
    }
    @RequestMapping("/logoutsuccess")
    public String logoutSuccess(Model model){
    	model.addAttribute("logoutSuccess","Loggedout Successfully");
    	return "login";
    }
	
//	@RequestMapping(value="/login")
//	public String login() {
//		return "login";
//	}
}
