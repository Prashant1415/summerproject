package com.Manage.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Manage.Exception.UserBlockedException;
import com.Manage.Services.UserService;
import com.Manage.command.loginCommand;
import com.Manage.command.userCommand;
import com.Manage.domain.user;








@Controller
public class userController {
	@Autowired
	private UserService userService;
	@RequestMapping(value= {"/" ,"/index"})
	public String home(Model m) {
		m.addAttribute("command", new loginCommand());
		return "index";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String handleLogin(@ModelAttribute("command") loginCommand cmd, Model m,HttpSession session) {

		try {
			user loggedIn=userService.login(cmd.getLoginName(), cmd.getPassword());
			
			if(loggedIn==null) {
			
				m.addAttribute("err","enter the correct password");
				return "index";
			}
			else {
				if(loggedIn.getRole().equals(UserService.ROLE_ADMIN)) {
					addUserInSession(loggedIn,session);
					return "redirect:/admin/dashboard";
					
				}
				else if(loggedIn.getRole().equals(UserService.ROLE_USER)) {
					addUserInSession(loggedIn,session);
					return "redirect:/user/dashboard";
				}
				else {
					m.addAttribute("err","invalid role");
					return "index";
					
				}
			}
		} catch (UserBlockedException e) {
			// TODO Auto-generated catch block
			m.addAttribute("err", e.getMessage());
			e.printStackTrace();
		}
		return null;
	}
	
		
	@RequestMapping("/user/dashboard")
	public String userdash() {
		return "user_dashboard";
	}
	
	@RequestMapping("/admin/dashboard")
	public String admindash() {
		return "admin_dashboard";				
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index?act=lo";				
	}

	
	@RequestMapping("/row")
	public String row(HttpSession session) {
		session.invalidate();
		return "example";				
	}
	@GetMapping(value={"/regx"})
	public String regs(Model m) {
		user cmd= new user();
		m.addAttribute("command", cmd);
		return "regForm";
		
	}
	
	@RequestMapping("/hot")
	public String New() {
		
		return "NewFile";
		
	}
	private void addUserInSession(user u,HttpSession session) {
		session.setAttribute("user", u);
		session.setAttribute("userId", u.getUserId());
		session.setAttribute("role", u.getRole());
	}

//	@RequestMapping(value={"/regForm"})
//	public String userRegistration(@Valid@ModelAttribute("command") userCommand cmd, Model m,BindingResult br) {
//		
//		if(br.hasErrors()) {
//			System.out.println(br);
//			return "regForm";
//		}
//		
//		try {
//		user u=cmd.getU();
//		u.setRole(userService.ROLE_USER);
//		u.setLoginStatus(userService.LOGIN_STATUS_ACTIVE);
//		userService.register(u);
//		return "redirect:index?act=REG";
//		}
//		catch( DuplicateKeyException e) {
//			e.printStackTrace();
//			m.addAttribute("err","same login name use different");
//			return "regForm";
//		}
//	}
	
	@PostMapping(value= {"/regForm"})
		public String userRegister(@Valid @ModelAttribute("command") user cmd,BindingResult error,Model m) {
		if(error.hasErrors()) {
			
			return "regForm";
		}
		try {
			
			cmd.setRole(userService.ROLE_USER);
			cmd.setLoginStatus(userService.LOGIN_STATUS_ACTIVE);
			
			
			userService.register(cmd);
			return "redirect:index?act=REG";
			}
			catch( DuplicateKeyException e) {
				e.printStackTrace();
				m.addAttribute("err","same login name use different");
				return "regForm";
			}
		
		
	}

	
	
}
	
	
	