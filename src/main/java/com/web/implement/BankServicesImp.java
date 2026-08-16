package com.web.implement;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.web.bank.Bank;
import com.web.bank.Dummy;
import com.web.repo.BankRepo;
import com.web.service.BankService;

@Service
public class BankServicesImp implements BankService {

	@Autowired
	private BankRepo repo;

	@Autowired
	private PasswordEncoder passwordEncoder;

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
		bank.setAmount(depositAmount);
		bank.setAddress(dummy.getAddress());
		bank.setMobile(dummy.getMobile());
		bank.setPassword(passwordEncoder.encode(password));

		return repo.save(bank);
	}

	@Override
	public Bank getBalance(Bank bank) {
		return repo.findById(bank.getAcc_number())
				.filter(account -> account.getName().equalsIgnoreCase(bank.getName()))
				.filter(account -> passwordEncoder.matches(bank.getPassword(), account.getPassword()))
				.orElse(null);
	}

	@Override
	public Bank moneyDeposit(Bank bank) {
		Bank bank1 = repo.findById(bank.getAcc_number()).orElse(null);

		if (bank1 == null) {
			return null;
		}

		if (bank.getName().equalsIgnoreCase(bank1.getName()) &&
				passwordEncoder.matches(bank.getPassword(), bank1.getPassword())) {

			bank1.setAmount(bank.getAmount() + bank1.getAmount());
			repo.save(bank1);
			return bank1;
		} else {
			return null;
		}
	}

	@Override
	public Bank moneyWithdrow(Bank bank) {
		Bank bank1 = repo.findById(bank.getAcc_number()).orElse(null);

		if (bank1 == null) {
			return null;
		}

		if (bank.getName().equalsIgnoreCase(bank1.getName()) &&
				passwordEncoder.matches(bank.getPassword(), bank1.getPassword())) {

			if (bank1.getAmount() < bank.getAmount()) {
				throw new IllegalArgumentException("Insufficient balance!");
			}

			bank1.setAmount(bank1.getAmount() - bank.getAmount());
			repo.save(bank1);
			return bank1;
		} else {
			return null;
		}
	}

	@Override
	@Transactional
	public Bank moneyTransfer(Bank bank, long targetAcc, double amount) {
		// 1. भेजने वाले (Sender) को ढूंढें
		Bank sender = repo.findById(bank.getAcc_number()).orElse(null);
		if (sender == null) {
			throw new RuntimeException("आपका अकाउंट नंबर रिकॉर्ड में नहीं मिला!");
		}

		// 2. भेजने वाले का पासवर्ड चेक करें
		if (!passwordEncoder.matches(bank.getPassword(), sender.getPassword())) {
			throw new RuntimeException("गलत पासवर्ड! कृपया दोबारा जांचें।");
		}

		// 3. पाने वाले (Receiver/Target) का अकाउंट चेक करें
		Bank receiver = repo.findById(targetAcc).orElse(null);
		if (receiver == null) {
			throw new RuntimeException("टारगेट अकाउंट नंबर मौजूद नहीं है!");
		}

		// 4. खुद के अकाउंट में ट्रांसफर ब्लॉक करें
		if (bank.getAcc_number() == targetAcc) {
			throw new RuntimeException("आप खुद के ही अकाउंट में पैसे ट्रांसफर नहीं कर सकते!");
		}

		// 5. बैलेंस चेक करें
		if (sender.getAmount() < amount) {
			throw new RuntimeException("अपर्याप्त बैलेंस! आपके खाते में पर्याप्त पैसे नहीं हैं।");
		}

		sender.setAmount(sender.getAmount() - amount);
		receiver.setAmount(receiver.getAmount() + amount);

		repo.save(sender);
		repo.save(receiver);

		return sender;
	}

	@Override
	public String closeAccount(Bank bank) {
		Bank existingBank = repo.findById(bank.getAcc_number()).orElse(null);

		if (existingBank != null &&
				existingBank.getName().equalsIgnoreCase(bank.getName()) &&
				passwordEncoder.matches(bank.getPassword(), existingBank.getPassword())) {

			repo.deleteById(bank.getAcc_number());
			return "Success";
		}

		return "Failure";
	}

	@Override
	public Bank getAccountByNumber(long acc_number) {
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