package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.bank.Bank;
import com.web.bank.Dummy;
import com.web.implement.BankServicesImp;

@Controller
public class MyController {

	@Autowired
	private BankServicesImp service;
	
	// 1. Home Page Navigation Hub
	@GetMapping("/")
	public String homepage(ModelMap model) {
		Bank bank = new Bank();
		return "Home";
	}
	
	// 2. Open Create Account Form Page
	@GetMapping("/account")
	public String createpage(ModelMap model, Dummy dummy) {
		model.put("dummy", dummy);
		return "NewAccount";
	}
	
	// 3. Process Account Registration
	@PostMapping("/register")
	public String registerbank(@ModelAttribute Dummy dummy, ModelMap model) {
		service.NewAccount(dummy);
		return "success";
	}
	
	
	
	// 4. Open Balance Inquiry Page
	@GetMapping("/balance")
	public String balancepage(ModelMap model) {
		model.addAttribute("bank" , new Bank());
		return "Balance";
	}
	
	// 5. Query Account Balance 
	@PostMapping("/cheakbal")
	public String checkbalance(@ModelAttribute("bank") Bank bank, ModelMap model) {
	    Bank bank1 = service.getBalance(bank);
	    
	    if (bank1 != null) {
	        model.addAttribute("bank", bank1);
	        return "NewBalance"; // डेटा सही होने पर ही केवल सक्सेस पेज खुलेगा
	    } else {
	        model.addAttribute("msg", "Invalid Account Number, Name, or Password!");
	        return "NewBalance"; // 🚀 यहाँ "NewBalance" की जगह "Balance" करना सबसे ज़रूरी है
	    }
	}

	

	// 6. Open Cash Deposit Page
	@GetMapping("/depo")
	public String depositpage(ModelMap model, Bank bank) {
		model.addAttribute("command", bank);
		return "Deposite";
	}
	
	// 7. Process Cash Deposit
	@PostMapping("/dep")
	public String depositfile(@ModelAttribute Bank bank, ModelMap model) {
		Bank moneyDeposit = service.moneyDeposit(bank);
		model.put("before", bank.getAmount());
		model.put("deposit", moneyDeposit.getAmount());
		model.put("afterdeposit", bank.getAmount() + moneyDeposit.getAmount());
		
		return "Amount";
	}
	
	// 8. Open Cash Withdrawal Page
	@GetMapping("/withdrow")
	public String withdrowpage(ModelMap model, Bank bank) {
		model.addAttribute("bank", bank);
		return "Withdrow";
	}
	
	// 9. Process Cash Withdrawal
	@PostMapping("/withd")
	public String withdrowfile(@ModelAttribute Bank bank, ModelMap model) {
		Bank moneyWithdrow = service.moneyWithdrow(bank);
		
		model.put("before", bank.getAmount());
		model.put("withdraw", moneyWithdrow.getAmount());
		model.put("afterwithdraw", moneyWithdrow.getAmount() - bank.getAmount());
		
		return "withdrowSuccess";	
	}
	
	
	
	
	// 10. Open Fund Transfer Page
	@GetMapping("/Money")
	public String moneytransfer(ModelMap model, Bank bank) {
		model.addAttribute("command", bank); 
		return "MoneyTransfer";	
	}

	// 11. Process Inter-Account Fund Transfer
	@PostMapping("/transfermoney")
	public String transfermoney(@ModelAttribute Bank bank, 
	                            @RequestParam("targetAcc") long targetAcc, 
	                            @RequestParam("transferAmount") double transferAmount, 
	                            ModelMap model) {
		try {
		    // Call the service; if something goes wrong, it will jump straight to the catch block
		    Bank status = service.moneyTransfer(bank, targetAcc, transferAmount);
		    
		    model.addAttribute("bank", status);
		    model.addAttribute("msg", "Congratulations! ₹" + transferAmount + " has been successfully transferred.");
		} catch (RuntimeException e) {
		    // The message thrown from the service will be displayed here
		    model.addAttribute("msg", "Transfer Failed: " + e.getMessage());
		}
		return "transfer"; 
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

	// 12. Open Close Account Form Page
	@GetMapping("/close")
	public String closeaccount(ModelMap model, Bank bank) {
		model.addAttribute("command", bank);
		return "CloseAcc";
	}

	// 13. Process Account Termination Deletion
	@PostMapping("/confirmClose")
	public String deleteAccount(@ModelAttribute Bank bank, ModelMap model) {
		String status = service.closeAccount(bank);
	    
		if (status.equals("Success")) {
			model.addAttribute("msg", "Account Number " + bank.getAcc_number() + " has been closed successfully.");
			return "close"; 
		} else {
			model.addAttribute("msg", "Invalid Credentials! Account could not be closed.");
			return "CloseAcc"; 
		}
	}

	// 14. Load About Information Page
	@GetMapping("/about")
	public String aboutfile(ModelMap model, Bank bank) {
		model.addAttribute("bank", bank);
		return "About";
	}

	// 15. Load Search Overlay Form Page
	@GetMapping("/searchPage")
	public String showSearchPage() {
		return "searchAccount"; 
	}

	// 16. MODIFIED PATH: Specific User Search Query (Changed to /searchAccount)
	@GetMapping("/searchAccount")
	public String findAccount(@RequestParam("search_acc_number") String searchAccStr, ModelMap model) {
		try {
			long accNumber = Long.parseLong(searchAccStr);
			Bank bank = service.getAccountByNumber(accNumber);
			model.put("accountDetails", bank); 
		} catch (NumberFormatException e) {
			model.put("searchError", "Please enter a valid numeric account number.");
		} catch (IllegalArgumentException e) {
			model.put("searchError", e.getMessage());
		}
		return "searchAccount"; 
	}
}
