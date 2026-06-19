package com.web.implement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bank.Bank;
import com.web.bank.Dummy;
import com.web.repo.BankRepo;
import com.web.service.BankService;

@Service
public class BankServicesImp implements BankService {
    @Autowired
    private BankRepo repo;
	
    @Override
    public Bank NewAccount(Dummy dummy) {
        // 1. Account Number Validation (14 digits)
        long accNum = dummy.getAcc_number();
        if (accNum < 10000000000000L || accNum > 99999999999999L) {
            throw new IllegalArgumentException("Account number must be exactly 14 numeric digits.");
        }

        // 2. Name Validation (Letters and Spaces only)
        String name = dummy.getName();
        if (name == null || !name.matches("^[A-Za-z ]+$")) {
            throw new IllegalArgumentException("Full Name must contain letters and spaces only.");
        }

        // 3. Deposit Amount Validation (Numeric and >= 1000)
        double depositAmount;
        try {
            // This converts the string to a number. If it contains alphabets, it jumps to the catch block.
            depositAmount = Double.parseDouble(String.valueOf(dummy.getAmount()));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Initial deposit amount must be a valid number.");
        }

        if (depositAmount < 1000) {
            throw new IllegalArgumentException("Initial deposit amount must be at least ₹1000.");
        }

        // 4. Password Matching Validation
        String password = dummy.getPassword();
        String confPassword = dummy.getConf_password();

        if (password == null || confPassword == null) {
            throw new IllegalArgumentException("Password fields cannot be empty.");
        }

        if (!password.equals(confPassword)) {
            throw new IllegalArgumentException("Password and Confirm Password do not match.");
        }

        // 5. Strong Password Criteria Validation
        String passwordPattern = "^(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$";
        if (!password.matches(passwordPattern)) {
            throw new IllegalArgumentException("Password must be at least 8 characters long, containing at least one uppercase letter, one number, and one special character.");
        }

        // Map to entity and save
        Bank bank = new Bank();
        bank.setAcc_number(accNum);
        bank.setName(name);
        bank.setAmount(depositAmount); // Set verified numeric amount
        bank.setAddress(dummy.getAddress());
        bank.setMobile(dummy.getMobile());
        bank.setPassword(password);
    	
        return repo.save(bank);
    }








	
//	@Override
//	public Bank getBalance(Bank bank) {
//		
//		 Bank bank1=repo.findById(bank.getAccountNumber()).get();		 
//		 if(bank.getAccountNumber()==bank1.getAccountNumber()&&
//				 bank.getName().equalsIgnoreCase(bank1.getName())&&
//				 bank.getPassword().equals(bank1.getPassword())) {
//		 
//		return bank1;
//	}
//	else {
//		return null;
//	}
//}
	
	
	@Override
	public Bank getBalance(Bank bank) {
	    // Check if account exists first to avoid errors
	    return repo.findById(bank.getAcc_number())
	        .filter(account -> account.getName().equalsIgnoreCase(bank.getName()))
	        .filter(account -> account.getPassword().equals(bank.getPassword()))
	        .orElse(null); // Returns null if name or password doesn't match
	}

	
	
	
	@Override
	public Bank moneyDeposit(Bank bank) {
		 Bank bank1=repo.findById(bank.getAcc_number()).get();
		
		 if(bank.getAcc_number()==bank1.getAcc_number()&&
				 bank.getName().equals(bank1.getName())&&
				 bank.getPassword().equalsIgnoreCase(bank1.getPassword())) {
			 
		 
				 bank1.setAmount(bank.getAmount()+bank1.getAmount());
				 repo.save(bank1);
		return bank1;
	}else 
		return null;
	}
	
	
	
	@Override
	public Bank moneyWithdrow(Bank bank) {
		
		Bank bank1=repo.findById(bank.getAcc_number()).get();
		
		 if(bank.getAcc_number()==bank1.getAcc_number()&&
				 bank.getName().equals(bank1.getName())&&
				 bank.getPassword().equalsIgnoreCase(bank1.getPassword())) {
			 
				 bank1.setAmount(bank1.getAmount()-bank.getAmount());
				 repo.save(bank1);
		return bank1;
	}else 
		return null;
	}
	
	
	
//
//	@Override
//	public Bank moneyTransfer(Bank bank) {
//		Bank bank1=repo.findById(bank.getAcc_number()).get();
//		Bank bank2=repo.findById(bank.getAcc_number()).get();
//		
//		if(bank.getAcc_number()==bank1.getAcc_number()&&
//		   bank.getName().equalsIgnoreCase(bank1.getName())&&
//		    bank.getPassword().equals(bank1.getPassword())) {
//			
//		}
//		return bank;
//	}

	

	@Override
	public Bank moneyTransfer(Bank bank, long targetAcc, double amount) {
	    // 1. Sender ko dhoondo aur verify karo
	    Bank sender = repo.findById(bank.getAcc_number()).orElse(null);
	    
	    // 2. Receiver ko dhoondo
	    Bank receiver = repo.findById(targetAcc).orElse(null);

	    if (sender != null && receiver != null && 
	        sender.getPassword().equals(bank.getPassword()) && 
	        sender.getAmount() >= amount) {
	        
	        // Calculation
	        sender.setAmount(sender.getAmount() - amount);
	        receiver.setAmount(receiver.getAmount() + amount);
	        
	        repo.save(sender);
	        repo.save(receiver);
	        
	        return sender; // Success
	    }
	    return null; // Failure
	}

	
	
	
	
	
	
	
//	@Override
//	public Bank closeAccount(Bank bank) {
//    long Account=bank.getAcc_number();
//		Bank bank1=repo.findById(Account).get();
//		if(Account==bank1.getAcc_number()&&
//		   bank.getName().equalsIgnoreCase(bank1.getName())&&
//		    bank.getPassword().equals(bank1.getPassword())) {
//			
//		}
//		return bank1;
//	}
//	}

	@Override
	public String closeAccount(Bank bank) {
	    // 1. Fetch the existing account from DB
	    Bank existingBank = repo.findById(bank.getAcc_number()).orElse(null);

	    // 2. Validate Credentials
	    if (existingBank != null && 
	        existingBank.getName().equalsIgnoreCase(bank.getName()) && 
	        existingBank.getPassword().equals(bank.getPassword())) {
	        
	        // 3. Delete the account
	        repo.deleteById(bank.getAcc_number());
	        return "Success";
	    }
	    
	    return "Failure";
	}





	@Override
	public Bank getAccountByNumber(long acc_number) {
	    // Matches the method inside BankRepo exactly
	    Bank bank = repo.findByAccountNumber(acc_number); 
	    
	    if (bank == null) {
	        throw new IllegalArgumentException("Account number not found!");
	    }
	    return bank;
	}
	
	
	@Override
	public void deleteAccountByNumber(long acc_number) {
	    repo.deleteById(acc_number);
	}

}






