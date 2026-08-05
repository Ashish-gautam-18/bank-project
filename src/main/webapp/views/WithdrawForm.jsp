<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Secure Cash Withdrawal</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/WithdrawForm.css">
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Central SDFC Navbar -->
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

    <!-- Content Centering Layer -->
    <div class="form-wrapper">
        <div class="form-container">
            <h2>Secure Cash Withdrawal</h2>
            <p class="form-desc">Debit secure real-time funds safely from your active ledger account</p>
            
            <form action="${pageContext.request.contextPath}/withd" method="POST">
                
                <div class="input-group">
                    <label>Account Number</label>
                    <input type="text" name="acc_number" placeholder="Enter primary account number" required>
                </div>

                <div class="input-group">
                    <label>Account Holder Name</label>
                    <input type="text" name="name" placeholder="Enter account holder name" required>
                </div>

                <div class="input-group">
                    <label>Account Password</label>
                    <input type="password" name="password" placeholder="Enter secure password" required>
                </div>

				<div class="input-group">
				    
				    <label>Withdrawal Amount (&#8377;)</label>
				    
				    <!-- MODIFIED: Type changed to number to instantly prevent alphabet inputs -->
				    <input type="number" name="amount" min="1" placeholder="Enter amount to debit" required>
				</div>


                <div class="button-group">
                    <button type="submit" class="btn-submit">Confirm Withdrawal</button>
                    <button type="reset" class="btn-clear">Clear</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
