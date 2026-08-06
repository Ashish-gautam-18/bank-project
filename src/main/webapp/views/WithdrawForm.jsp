<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Essential responsive viewport tag for cross-device scaling -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Secure Cash Withdrawal</title>
    
    <!-- Link external base presentation stylesheet asset -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Home.css">
    
    <!-- Link centralized global layout architecture specs -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Globle.css">
    
    <!-- Original form-specific stylesheet containing responsive overrides at the bottom -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/WithdrawForm.css">
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Navbar block updated with missing mobile hamburger menu layout specs -->
    <nav class="navbar">
        
        <!-- Left Side: Standardized Logo Area matching style sheet properties -->
        <div class="logo-area">
            <span class="logo-text">SDFC <span class="logo-highlight">BANK</span></span>
        </div>

        <!-- Hamburger Menu Button for Mobile Layout Viewports (☰) -->
        <button class="menu-toggle" onclick="toggleMenu()">
            <span></span>
            <span></span>
            <span></span>
        </button>

        <!-- Menu Links container using exact structural ID required by Home.js logic -->
        <div class="menu" id="navMenu">
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
            <h2>Secure Cash Withdrawal</h2>
            <p class="form-desc">Debit secure real-time funds safely from your active ledger account</p>
            
            <form action="${pageContext.request.contextPath}/withd" method="POST">
                
                <!-- Account parameters mapped securely with global layout rules -->
                <div class="input-group form-group">
                    <label>Account Number</label>
                    <input type="text" name="acc_number" placeholder="Enter primary account number" required>
                </div>

                <div class="input-group form-group">
                    <label>Account Holder Name</label>
                    <input type="text" name="name" placeholder="Enter account holder name" required>
                </div>

                <div class="input-group form-group">
                    <label>Account Password</label>
                    <input type="password" name="password" placeholder="Enter secure password" required>
                </div>

				<div class="input-group form-group">
				    <label>Withdrawal Amount (₹)</label>
				    <input type="number" name="amount" min="1" placeholder="Enter amount to debit" required>
				</div>

                <!-- Interaction triggering triggers row configured for mobile viewports -->
                <div class="button-group">
                    <button type="submit" class="btn-submit form-btn">Confirm Withdrawal</button>
                    <button type="reset" class="btn-clear form-btn">Clear</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Central scripts stack tracking reference for the hamburger side menu toggle logic -->
    <script src="${pageContext.request.contextPath}/js/Home.js"></script>
</body>
</html>
