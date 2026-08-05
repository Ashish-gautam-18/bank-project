package com.web.service;

import com.web.bank.Bank;
import com.web.bank.Dummy;


public interface BankService {

	public Bank NewAccount(Dummy dummy);
	public Bank getBalance(Bank bank);
	public Bank moneyDeposit(Bank bank);
	public Bank moneyWithdrow(Bank bank);
	public Bank moneyTransfer(Bank senderBank, long targetAcc, double transferAmount);
	public String closeAccount(Bank bank);
	Bank getAccountByNumber(long acc_number);
	void deleteAccountByNumber(long acc_number);


}
