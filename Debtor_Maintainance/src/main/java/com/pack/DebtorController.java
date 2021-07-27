package com.pack;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.pack.dao.BankDao;
import com.pack.dao.DebtorDao;
import com.pack.model.Debtor;
import com.pack.model.Login;

@Controller
public class DebtorController {
	/*
	 * @RequestMapping("/") public String home(Model m) {
	 * 
	 * m.addAttribute("log", new Login()); return "Login"; }
	 * 
	 * @RequestMapping(value = "/Login", method = RequestMethod.POST) public String
	 * homepage() { return "menu"; }
	 */
	 @Autowired    
	    DebtorDao debtorDao;
		
	
	@RequestMapping("/addUserForm")  
 public String add(Model m)  
 {  
     m.addAttribute("deb", new  Debtor());  
     return "userform";  
 }
	
	
	  @RequestMapping(value = "/addDebtor", method = RequestMethod.POST) 
	  public String addStudent(Debtor debtor) {
		 int res= debtorDao.insert(debtor);
		 if (res>=1)
		  return "redirect:/viewForm";
		 else
			 return "adduser-error";
	   
	  }
	 
	
	  @RequestMapping("/viewForm")    
	    public String viewdeb(Model m){    
	        List<Debtor> list=debtorDao.viewAll();  
	        m.addAttribute("list",list);  
	        return "view";    
	    }  
	  
	  
		
		@RequestMapping("/editDeb")  
	    public String edit( @RequestParam("id") int id, Model m){    
			 
		Debtor deb= debtorDao.getDebById(id);
		m.addAttribute("editDebForm",deb);
			 
			System.out.println("id "+id);
			 
	        return "editAction";    
	    } 
		
		
		@RequestMapping("/editDebtor")
		public String modify(Debtor debtor)
		{
			int res=debtorDao.modify(debtor);
			if (res>=1)
				  return "redirect:/viewForm";
				 else
					 return "adduser-error";
			  			 
		}
		
		@RequestMapping(value="/deleteDeb/{id}",method = RequestMethod.GET)    
	    public String delete(@PathVariable int id){    
		int res=debtorDao.delete(id); 
			if (res>=1)
				  return "redirect:/viewForm";
				 else
					 return "adduser-error";
	         
	    }    
		
		 @RequestMapping("/goHome")
		  public String page() {
		
		    return "menu";
		  }
			
	
}
