<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Deposit Funds</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/DepositForm.css">
</head>
<body>
	
 <div class="background-overlay"></div>
    
    <!-- Central SDFC Navbar Context links -->
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

    <!-- Centered Box Content Wrapper Layout -->
    <div class="form-wrapper">
        <div class="form-container">
            <h2>Instant Fund Deposit</h2>
            <p class="form-desc">Safely credit real-time liquidity directly into your active asset account</p>
            
            <form action="${pageContext.request.contextPath}/dep" method="POST">
                
                <div class="input-group">
                    <label>Account Number</label>
                    <input type="text" name="acc_number" placeholder="Enter target account number" required>
                </div>

                <div class="input-group">
                    <label>Account Holder Name</label>
                    <input type="text" name="name" placeholder="Enter full primary name" required>
                </div>

                <div class="input-group">
                    <label>Account Password</label>
                    <input type="password" name="password" placeholder="Enter transaction password" required>
                </div>

                <div class="input-group">
                    <label>Deposit Amount (₹)</label>
                    <input type="text" name="amount" placeholder="Enter amount to credit" required>
                </div>

                <div class="button-group">
                    <button type="submit" class="btn-submit">Confirm Deposit</button>
                    <button type="reset" class="btn-clear">Clear</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
