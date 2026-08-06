<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Essential responsive viewport tag for cross-device scaling -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Open New Account</title>
    
    <!-- Link external base presentation stylesheet asset -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Home.css">
    
    <!-- Link centralized global layout architecture specs -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Globle.css">
    
    <!-- Original form-specific stylesheet containing responsive overrides at the bottom -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/NewAccountForm.css">
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Navbar block updated with responsive mobile triggers -->
    <nav class="navbar">
        
        <!-- Left Side: Standardized Logo Area required by your stylesheet layout specs -->
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
            <h2>Open New Account</h2>
            
            <form action="${pageContext.request.contextPath}/register" method="POST">
                <div class="form-grid">
                    
                    <!-- Original account numeric constraint validation structure -->
                    <div class="input-group form-group">
                        <label>Account Number</label>
                        <input type="text" name="acc_number" placeholder="Enter 14-digit account number"
                               minlength="14" maxlength="14" pattern="\d{14}"
                               title="Account number must be exactly 14 numeric digits" required>
                    </div>
					
                    <!-- Original alphabetical constraint validation structure -->
                    <div class="input-group form-group">
                        <label>Name</label>
                        <input type="text" name="name" placeholder="Enter full name (Letters only)" 
                               pattern="^[A-Za-z ]+$" 
                               title="Full Name must contain letters and spaces only." required>
                    </div>

                    <!-- Complex regulatory password criteria validator string -->
                    <div class="input-group form-group">
                        <label>Password</label>
                        <input type="password" id="password" name="password" placeholder="Min 8 chars, 1 Cap, 1 Num, 1 Symbol" 
                               pattern="^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" 
                               title="Password must be at least 8 characters long, contain at least one uppercase letter, one number, and one special character (@$!%*?&)." required>
                    </div>

                    <!-- Passcode string confirmation validator element -->
                    <div class="input-group form-group">
                        <label>Confirm Password</label>
                        <input type="password" id="conf_password" name="conf_password" placeholder="Repeat password" required>
                    </div>

                    <!-- Liquid assets initialization financial parameter tracker -->
                    <div class="input-group form-group">
                        <label>Initial Deposit Amount</label>
                        <input type="number" name="amount" placeholder="Minimum ₹1000" min="1000" title="Initial deposit must be a number and at least ₹1000" required>
                    </div>

                    <!-- Verified telecommunications endpoint data selector element -->
                    <div class="input-group form-group">
                        <label>Mobile Number</label>
                        <input type="text" name="mobile" placeholder="Enter 10-digit mobile number"
                               minlength="10" maxlength="10" pattern="\d{10}"
                               title="Mobile number must be 10 digits" required>
                    </div>

                    <!-- Complete multiline physical geographical address mapping element -->
                    <div class="input-group full-width form-group">
                        <label>Residential Address</label>
                        <textarea name="address" placeholder="Enter complete address" required></textarea>
                    </div>
                </div>

                <!-- Transaction processing control triggers matrix layer adapted for cross-device viewports -->
                <div class="button-group">
                    <button type="submit" class="btn-submit form-btn">Submit Application</button>
                    <button type="reset" class="btn-clear form-btn" style="background-color: #6c757d;">Clear</button>
                </div>
            </form>
        </div>
    </div>
	
    <!-- Dedicated form client-side processing script asset file reference -->
    <script src="${pageContext.request.contextPath}/js/NewAccountForm.js"></script>
    
    <!-- Central scripts stack tracking reference for the hamburger side menu toggle logic -->
    <script src="${pageContext.request.contextPath}/js/Home.js"></script>
</body>
</html>
