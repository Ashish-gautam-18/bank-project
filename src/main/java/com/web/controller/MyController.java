package com.web.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.bank.Bank;
import com.web.bank.Dummy;
import com.web.implement.BankServicesImp;

@Controller
public class MyController {
	@Autowired
	private BankServicesImp service;
	
//	@RequestMapping("/")
//	public String homepage(ModelMap model) {
//	    System.out.println("----ha controller kaam ker raha bhai! ----");
//	    return "Home";
//	}

	
	@RequestMapping("/")
	public String homepage(ModelMap model) {
		Bank bank=new Bank();
		
		return "Home";
	}
	
	
	
	
	
	@RequestMapping("/account")
	public String createpage(ModelMap model,Dummy dummy)
	{
		model.put("dummy", dummy);
	  return "NewAccount";
	}
	
	@RequestMapping("/register")
     public String registerbank(@ModelAttribute Dummy dummy,  ModelMap model)
	{
		    service.NewAccount(dummy);
		    return "success";
	}
	
	
	
	
	@RequestMapping("/balance")
	public String balancepage(ModelMap model,Bank bank) {
		model.addAttribute("command" ,bank);
		return "Balance";
	}
	
	@RequestMapping("/cheakbal")
	public String checkbalance(@ModelAttribute Bank bank, ModelMap model) {
	    Bank bank1 = service.getBalance(bank);
	    
	    if (bank1 != null) {
	        model.addAttribute("bank", bank1);
	        return "NewBalance"; // Success page
	    } else {
	        model.addAttribute("msg", "Invalid Account Number, Name, or Password!");
	        return "NewBalance"; // Send them back to the login/input page
	    }
	}

	
	
	
	@RequestMapping("/depo")
	public String depositpage(ModelMap model,Bank bank) {
		model.addAttribute("command" ,bank);
		return "Deposite";
	}
	
	@RequestMapping("/dep")
	public String depositfile(@ModelAttribute Bank bank,  ModelMap model) {
		
		Bank moneyDeposit= service.moneyDeposit(bank);
		model.put("before", bank.getAmount());
		model.put("deposit", moneyDeposit.getAmount());
		model.put("afterdeposit", bank.getAmount()+moneyDeposit.getAmount());
		
		  return "Amount";
	}
	
	
	
	
	
	@RequestMapping("/withdrow")
	public String withdrowpage(ModelMap model,Bank bank) {
		model.addAttribute("bank",bank);
		return "Withdrow";
		
	}
	
	@RequestMapping("/withd")
	public String withdrowfile(@ModelAttribute Bank bank,  ModelMap model) {
		Bank moneyWithdrow= service.moneyWithdrow(bank);
		
		model.put("before",bank.getAmount());
		model.put("withdraw",moneyWithdrow.getAmount());
		model.put("afterwithdraw",moneyWithdrow.getAmount()-bank.getAmount());
		
		  return "withdrowSuccess";	
}
	
	
	
	
	
	
//	@RequestMapping("/Money")
//	public String moneytransfer(ModelMap model,Bank bank) {
//		model.addAttribute("bank" ,bank);
//		return "MoneyTransfer";	
//	}
//	
//	@RequestMapping("/transfermoney")
//	public String transfermoney(@ModelAttribute Bank bank,  ModelMap model) {
//		 Bank transfer = service.getBalance(bank);
//         
//		 //logic 
//		 
//		return "transfer";
//	}
	
	
	
//	@RequestMapping("/transfermoney")
//	public String transfermoney(@ModelAttribute Bank bank, 
//	                            @RequestParam("targetAcc") long targetAcc, 
//	                            @RequestParam("transferAmount") double transferAmount, 
//	                            ModelMap model) {
//	    
//	    // We send the 'bank' object (sender) and the extra params to the service
//	    String status = service.moneyTransfer(bank, targetAcc, transferAmount);
//	    
//	    model.addAttribute("msg", status);
//	    return "transfer"; // This maps to transfer.jsp
//	}

	
	// Method 1: Just to open the Transfer Page
	@RequestMapping("/Money")
	public String moneytransfer(ModelMap model, Bank bank) {
	    model.addAttribute("command", bank); // Using 'command' to stay consistent with your balance logic
	    return "MoneyTransfer";	
	}

	// Method 2: To process the logic and show the result
	@RequestMapping("/transfermoney")
	public String transfermoney(@ModelAttribute Bank bank, 
	                            @RequestParam("targetAcc") long targetAcc, 
	                            @RequestParam("transferAmount") double transferAmount, 
	                            ModelMap model) {
	    
	    // Call the logic from Service
	    Bank status = service.moneyTransfer(bank, targetAcc, transferAmount);
	    
	    // Send the result message to the next page
	    model.addAttribute("msg", status);
	    
	    return "transfer"; // This will open transfer.jsp to show success/failure
	}

	
	
	
	
	
	
	
	
	// Method 1: Show the Close Account form
	@RequestMapping("/close")
	public String closeaccount(ModelMap model, Bank bank) {
	    model.addAttribute("command", bank);
	    return "CloseAcc";
	}

	// Method 2: Process the deletion
	@RequestMapping("/confirmClose")
	public String deleteAccount(@ModelAttribute Bank bank, ModelMap model) {
	    String status = service.closeAccount(bank);
	    
	    if (status.equals("Success")) {
	        model.addAttribute("msg", "Account Number " + bank.getAcc_number() + " has been closed successfully.");
	        return "close"; // You can use your existing success.jsp
	    } else {
	        model.addAttribute("msg", "Invalid Credentials! Account could not be closed.");
	        return "CloseAcc"; // Return to same page with error message
	    }
	}

	
	
	
	
	
	
	
	@RequestMapping("/about")
	public String aboutfile(ModelMap model,Bank bank) {
		model.addAttribute("bank" ,bank);
		return "About";
		
	}

	
	

@RequestMapping("/searchPage")
public String showSearchPage() {
    return "searchAccount"; // This loads searchAccount.jsp
}

@RequestMapping("/findAccount")
public String findAccount(@RequestParam("search_acc_number") String searchAccStr, ModelMap model) {
    try {
        // Convert the input String to a Long safely
        long accNumber = Long.parseLong(searchAccStr);
        
        Bank bank = service.getAccountByNumber(accNumber);
        model.put("accountDetails", bank); // Pass the found object to the JSP view
        
    } catch (NumberFormatException e) {
        model.put("searchError", "Please enter a valid numeric account number.");
    } catch (IllegalArgumentException e) {
        model.put("searchError", e.getMessage());
    }
    return "searchAccount"; 
}
}