package com.web.bank;

public class Dummy {
	
	    private long acc_number;
	    private String name;
	    private String password;
	    private String conf_password;
	    private double amount;
	    private String address;
	    private long mobile;
	    
		public Dummy() {
			super();
		}
		public Dummy(long acc_number, String name, String password, String conf_password, double amount, String address,
				long mobile) {
			super();
			this.acc_number = acc_number;
			this.name = name;
			this.password = password;
			this.conf_password = conf_password;
			this.amount = amount;
			this.address = address;
			this.mobile = mobile;
		}
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
		public String getConf_password() {
			return conf_password;
		}
		public void setConf_password(String conf_password) {
			this.conf_password = conf_password;
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
			return "Dummy [acc_number=" + acc_number + ", name=" + name + ", password=" + password + ", conf_password="
					+ conf_password + ", amount=" + amount + ", address=" + address + ", mobile=" + mobile + "]";
		}
	    
}
