package com.pack;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pack.model.Login;
@Controller
public class LoginController {
	 @RequestMapping("/")
	  public String init(Model model) {
	    model.addAttribute("log", new Login());
	    return "Login";
	  }

	  @RequestMapping(value="/login",method = RequestMethod.POST)
	  public String submit(Model model, @ModelAttribute("loginBean") Login login) {
	    if (login != null && login.getUsername() != null & login.getPassword() != null) {
	      if (login.getUsername().equals("manager") && login.getPassword().equals("root")) {
	        model.addAttribute("msg", login.getUsername());
	        return "menu";
	      } else if (login.getUsername().equals("Admin") && login.getPassword().equals("qwerty")) {
		        model.addAttribute("msg", login.getUsername());
		        return "viewpage";
		      } 
	      
	      
	      
	      else {
	        model.addAttribute("error", "Invalid Details");
	        return "Login";
	      }
	    } else {
	      model.addAttribute("error", "Please enter Details");
	      return "error";
	    }
	  }

}
