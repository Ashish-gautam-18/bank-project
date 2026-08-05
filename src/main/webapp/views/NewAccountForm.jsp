<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Open New Account</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/NewAccountForm.css">
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Navbar -->
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
        <div class="menu">
			<a href="/client-home" class="active">HOME</a>
			         <a href="/account">NEW ACCOUNT</a>
			         <a href="/balance">BALANCE</a>
			         <a href="/depo">DEPOSIT</a>
			         <a href="/withdrow">WITHDRAW</a>
			         <a href="/Money">TRANSFER</a>
			         <a href="/close">CLOSE A/C</a>
			         <a href="${pageContext.request.contextPath}/views/AboutRules.jsp">ABOUT</a>
			     </div>
    </nav>

    <!-- Centered Form Wrapper Layout -->
    <div class="form-wrapper">
        <div class="form-container">
            <h2>Open New Account</h2>
            
            <form action="${pageContext.request.contextPath}/register" method="POST">
                <div class="form-grid">
                    <div class="input-group">
                        <label>Account Number</label>
						<input type="text" name="acc_number" placeholder="Enter 14-digit account number"
						 minlength="14" maxlength="14" pattern="\d{14}"
						 title="Account number must be exactly 14 numeric digits" required>
						
                    </div>
					
                    <div class="input-group">
						<label>Name</label>
						<input type="text" name="name" placeholder="Enter full name (Letters only)" 
						          pattern="^[A-Za-z ]+$" 
						          title="Full Name must contain letters and spaces only." required>
                    </div>

					
					<div class="input-group">
					    <label>Password</label>
					    <!-- MODIFIED LINE BELOW: Enforces 1 capital, 1 number, 1 symbol, min 8 chars -->
					    <input type="password" id="password" name="password" placeholder="Min 8 chars, 1 Cap, 1 Num, 1 Symbol" 
					           pattern="^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" 
					           title="Password must be at least 8 characters long, contain at least one uppercase letter, one number, and one special character (@$!%*?&)." required>
					</div>

					<div class="input-group">
					    <label>Confirm Password</label>
					    <!-- MODIFIED LINE BELOW -->
					    <input type="password" id="conf_password" name="conf_password" placeholder="Repeat password" required>
					</div>

					<div class="input-group">
					    <label>Initial Deposit Amount</label>
					    <!-- MODIFIED: Placeholder and values configured cleanly -->
					    <input type="number" name="amount" placeholder="Minimum ₹1000" min="1000" title="Initial deposit must be a number and at least ₹1000" required>
					</div>


                    <div class="input-group">
                        <label>Mobile Number</label>
						<input type="text" name="mobile" placeholder="Enter 10-digit mobile number"
												 minlength="10" maxlength="10" pattern="\d{10}"
												 title="Mobile number must be 10 digits" required>
                    </div>

                    <div class="input-group full-width">
                        <label>Residential Address</label>
                        <textarea name="address" placeholder="Enter complete address" required></textarea>
                    </div>
                </div>

                <div class="button-group">
                    <button type="submit" class="btn-submit">Submit Application</button>
                    <button type="reset" class="btn-clear">Clear</button>
                </div>
            </form>
        </div>
    </div>
	
<script src="${pageContext.request.contextPath}/js/NewAccountForm.js"></script>

</body>
</html>
