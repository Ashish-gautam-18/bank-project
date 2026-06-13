package com.web.bank;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Bank {

	
	@Id
   //@GeneratedValue(strategy = GenerationType.IDENTITY)
    private long acc_number;
    private String name;
    private String password;
    private double amount;
    private String address;
    private long mobile;
    public Bank() {
		super();
	}
 
	public Bank(long accountNumber,  String name, String password, double amount, String address, long mobile) {
		super();
		this.acc_number = acc_number; ;
		this.name = name;
		this.password = password;
		this.amount = amount;
		this.address = address;
		this.mobile = mobile;
	}

	// Change the method names to match the variable
	public long getAcc_number() {
	    return acc_number;
	}

	public void setAcc_number(long acc_number) {
	    this.acc_number = acc_number;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	@Override
	public String toString() {
		return "Bank [acc_number=" + acc_number + ", name=" + name + ", password=" + password + ", amount="
				+ amount + ", address=" + address + ", mobile=" + mobile + "]";
	}

}
