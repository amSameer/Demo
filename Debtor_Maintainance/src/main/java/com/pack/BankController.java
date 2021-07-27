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
import com.pack.model.Bank;
import com.pack.model.Debtor;
@Controller
public class BankController {
	@Autowired
	BankDao bankdao;
	
	@RequestMapping("/addBankForm")  
	 public String addBank(Model m)  
	 {  
	     m.addAttribute("ban", new  Bank());  
	     return "Userform2";  
	     
	     
	 }
	  @RequestMapping(value = "/addDebBank", method = RequestMethod.POST) 
	  public String addBank(Bank bank) {
		 int res= bankdao.insert(bank);
		 if (res>=1)
		  return "redirect:/viewForm1";
		 else
			 return "adduser-error";
	   
	  }
	  @RequestMapping("/viewForm1")    
	    public String viewdeb(Model m){    
	        List<Bank> list=bankdao.viewAll();  
	        m.addAttribute("list",list);  
	        return "view1";    
	    }  
	  
	  
	  @RequestMapping("/editBank")  
	    public String edit( @RequestParam("id") int id, Model m){    
			 
		Bank ban= bankdao.getBankById(id);
		m.addAttribute("editBankForm",ban);
			 
			System.out.println("id "+id);
			 
	        return "editAction1";    
	    } 
		
		
		
		  @RequestMapping("/editBankDetails") 
		  public String modify(Bank bank) {
			  int res=bankdao.modify(bank);
			  if (res>=1) return "redirect:/viewForm1";
			  else
				  return "adduser-error";
		  
		  }
		  @RequestMapping(value="/deleteBank/{id}",method = RequestMethod.GET)    
		    public String delete(@PathVariable int id){    
			int res=bankdao.delete(id); 
				if (res>=1)
					  return "redirect:/viewForm1";
					 else
						 return "adduser-error";
		 
	  

}
}
