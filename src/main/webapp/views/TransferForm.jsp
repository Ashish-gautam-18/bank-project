<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Essential responsive viewport tag for cross-device scaling -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Secure Money Transfer</title>
    
    <!-- Link external base presentation stylesheet asset -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Home.css">
    
    <!-- Link centralized global layout architecture specs -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Globle.css">
    
    <!-- Original form-specific stylesheet containing responsive overrides at the bottom -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/TransferForm.css">
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Navbar block updated with missing mobile hamburger menu layout specs -->
    <nav class="navbar">
        
        <!-- Left Side: Standardized Logo Area matching your system style sheet constraints -->
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
			<a href="${pageContext.request.contextPath}/" class="active">HOME</a>
			<a href="${pageContext.request.contextPath}/account">NEW ACCOUNT</a>
			<a href="${pageContext.request.contextPath}/balance">BALANCE</a>
			<a href="${pageContext.request.contextPath}/depo">DEPOSIT</a>
			<a href="${pageContext.request.contextPath}/withdrow">WITHDRAW</a>
			<a href="${pageContext.request.contextPath}/Money">TRANSFER</a>
			<a href="${pageContext.request.contextPath}/close">CLOSE A/C</a>
			<a href="${pageContext.request.contextPath}/views/AboutRules.jsp">ABOUT</a>
        </div>
    </nav>

    <!-- Centered Form Wrapper Layout -->
    <div class="form-wrapper">
        <div class="form-container">
            <h2>Instant Fund Transfer</h2>
            <p class="form-desc">Send secure, real-time electronic funds immediately to any target account</p>
            
            <form action="transfermoney" method="post">
                <div class="form-grid">
                    
                    <div class="section-divider" style="margin-top: 0;">Your Account Details</div>

                    <!-- Source account data identification controller component -->
                    <div class="input-group form-group">
                        <label>Your Account Number</label>
                        <input type="text" name="acc_number" placeholder="Enter your account no" required>
                    </div>

                    <!-- Verified system account holder profile string block -->
                    <div class="input-group form-group">
                        <label>Your Name</label>
                        <input type="text" name="name" placeholder="Enter your full name" required>
                    </div>

                    <!-- Dynamic verification transaction authentication passcode input node -->
                    <div class="input-group full-width form-group">
                        <label>Secure Password</label>
                        <input type="password" name="password" placeholder="Enter transaction password" required>
                    </div>

                    <div class="section-divider">Beneficiary Recipient Details</div>

                    <!-- Destination target ledger mapping node -->
                    <div class="input-group form-group">
                        <label>Target Account Number</label>
                        <input type="text" name="targetAcc" placeholder="Enter beneficiary account number" required>
                    </div>

                    <!-- Precision asset evaluation liquidity parameter component -->
                    <div class="input-group form-group">
                        <label>Transfer Amount (₹)</label>
                        <input type="number" name="transferAmount" step="0.01" placeholder="Enter amount to send" required>
                    </div>

                </div>

                <!-- Interaction triggering buttons matrix configured for multi-device scalability -->
                <div class="button-group">
                    <button type="submit" class="btn-submit form-btn">Initiate Transfer</button>
                    <button type="reset" class="btn-clear form-btn">Clear</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Central scripts stack tracking reference for the hamburger side menu toggle logic -->
    <script src="${pageContext.request.contextPath}/js/Home.js"></script>
</body>
</html>
