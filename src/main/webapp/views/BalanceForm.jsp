<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Essential responsive viewport configuration tag for portable viewport scaling -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Check Balance</title>
    
    <!-- Link external base presentation stylesheet asset -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Home.css">
    
    <!-- Link centralized global layout architecture specs -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Globle.css">
    
    <!-- Original form-specific stylesheet containing responsive overrides at the bottom -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/BalanceForm.css">
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Navbar block updated with responsive mobile triggers matching core assets -->
    <nav class="navbar">
        
        <!-- Left Side: Standardized Logo Area matching your system style sheet constraints -->
        <div class="logo-area">
            <span class="logo-text">SDFC <span class="logo-highlight">BANK</span></span>
        </div>

        <!-- Hamburger Menu Button for Mobile Display Viewports (☰) -->
        <button class="menu-toggle" onclick="toggleMenu()">
            <span></span>
            <span></span>
            <span></span>
        </button>

        <!-- Menu Links container using exact structural ID required by Home.js execution functions -->
        <div class="menu" id="navMenu">
            <a href="${pageContext.request.contextPath}/">HOME</a>
            <a href="/account">NEW ACCOUNT</a>
            <a href="/balance" class="active">BALANCE</a>
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
            <h2>Check Account Balance</h2>
            <p>Please provide your credentials securely to fetch your live balance</p>
            
            <!-- Target servlet processing endpoint action path mapping loop -->
            <form action="${pageContext.request.contextPath}/cheakbal" method="POST">
                
                <div class="input-group form-group">
                    <label>Account Number</label>
                    <input type="text" name="acc_number" placeholder="Enter your account number" required>
                </div>
                
                <div class="input-group form-group">
                    <label>Account Holder Name</label>
                    <input type="text" name="name" placeholder="Enter your full name" required>
                </div>
                
                <div class="input-group form-group">
                    <label>Secure Password</label>
                    <input type="password" name="password" placeholder="Enter your password" required>
                </div>
                
                <!-- Action execution triggers matrix layer mapped with responsive blocks -->
                <div class="button-group">
                    <button type="submit" class="btn-submit form-btn">Fetch Balance</button>
                    <button type="reset" class="btn-clear form-btn">Clear</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Central script stacking layout reference tracking the mobile hamburger interaction functions -->
    <script src="${pageContext.request.contextPath}/js/Home.js"></script>
</body>
</html>
