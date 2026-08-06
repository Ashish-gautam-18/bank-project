<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Premium Digital Banking Portal</title>
    <link rel="icon" href="data:,">
    <!-- Linking external CSS stylesheet assets cleanly using context mappings -->
<!-- Embedded CSS for the Dynamic Navigation Elements -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Home.css">
</head>
<body>

	<!-- 2. STICKY DYNAMIC NAVIGATION BAR (Responsive Navbar) -->
	<nav class="navbar">
	    
	    <!-- Left Side: Logo Area -->
	    <div class="logo-area">
	        <img src="${pageContext.request.contextPath}/images/logo.png" alt="SDFC" class="bank-logo" 
	             onerror="this.style.display='none'; document.getElementById('fallback-icon').style.display='inline-flex';">
	        
	        <span id="fallback-icon">🛡️</span>
	        
	        <span class="logo-text">
	            SDFC <span class="logo-highlight">BANK</span>
	        </span>
	    </div>

	    <!-- Right Side: Search Block -->
	    <div class="Search">
	        <form action="${pageContext.request.contextPath}/findAccount" method="GET">
	            <input class="srch" type="search" name="search_acc_number" placeholder="Enter Account..." required pattern="\d+" title="Numbers only">
	            <button type="submit" class="btn">Search</button>
	        </form>
	    </div>

	    <!-- Hamburger Menu Button for Mobile (☰) -->
	    <button class="menu-toggle" onclick="toggleMenu()">
	        <span></span>
	        <span></span>
	        <span></span>
	    </button>

	    <!-- Middle: Menu Links -->
	    <div class="menu" id="navMenu">
	        <a href="/client-home" class="active">HOME</a>
	        <a href="/admin-dashboard" class="admin-btn">
	            <span class="admin-icon">⚙️</span> ADMIN DASHBOARD
	        </a>
	        <a href="/account">NEW ACCOUNT</a>
	        <a href="/balance">BALANCE</a>
	        <a href="/depo">DEPOSIT</a>
	        <a href="/withdrow">WITHDRAW</a>
	        <a href="/Money">TRANSFER</a>
	        <a href="/close">CLOSE A/C</a>
	        <a href="${pageContext.request.contextPath}/views/AboutRules.jsp">ABOUT</a>
	    </div>
	</nav>




    <!-- 1. IMAGE SLIDER HERO BANNER (3 Pages / Slides - Moves below the Navigation Bar) -->
    <header class="slider-container">
        <div class="slide active" style="background-image: linear-gradient(135deg, #051a37 0%, #0a2d5a 55%, #0a3d6b 100%);">
            <div class="slide-content">
                <h1 class="animate-text">Welcome to SDFC Bank</h1>
                <p class="animate-text delay-1">Secure, Real-Time Digital Banking Ecosystem.</p>
                <div class="slide-actions animate-text delay-2">
                    <a href="/account" class="hero-btn">Open Instant Account</a>
                    <button class="hero-btn-outline" onclick="openNoticeModal()">View Bank Notices</button>
                </div>
            </div>
        </div>
        <div class="slide" style="background-image: repeating-linear-gradient(135deg, #0a3346 0px, #0a3346 45px, #0f4a78 45px, #0f4a78 90px);">
            <div class="slide-content">
                <h1>Next-Gen Fund Transfers</h1>
                <p>Zero data inconsistency. Powered by automated safe ledger routing logic.</p>
                <div class="slide-actions">
                    <a href="/Money" class="hero-btn">Transfer Funds Now</a>
                </div>
            </div>
        </div>
        <div class="slide" style="background-image: linear-gradient(160deg, #0a0c12 0%, #123028 60%, #0f3d33 100%);">
            <div class="slide-content">
                <h1>Smart Wealth Management</h1>
                <p>Instant inquiries, deep balance auditing, and hyper-responsive secure workflows.</p>
                <div class="slide-actions">
                    <a href="/balance" class="hero-btn">Check Balance</a>
                </div>
            </div>
        </div>

        <!-- Slider Controls -->
        <button class="slider-nav prev" onclick="changeSlide(-1)">❮</button>
        <button class="slider-nav next" onclick="changeSlide(1)">❯</button>
        
        <!-- Slider Dots -->
        <div class="slider-dots">
            <span class="dot active" onclick="currentSlide(0)"></span>
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
        </div>
    </header>

	
    <!-- 3. REAL-TIME DATA & BANK SERVICES SECTION -->
    <main class="services-section">
        <h2 class="section-title">Core Operational Services</h2>
        <div class="services-container">
            <div class="service-card animate-scroll">
                <div class="card-icon">🔐</div>
                <h3>Secure Account Creation</h3>
                <p>Register immediately with dynamic validations. Systems comply with modern multi-factor account validation protocols.</p>
            </div>
            <div class="service-card animate-scroll">
                <div class="card-icon">📈</div>
                <h3>Real-Time Transactions</h3>
                <p>Deposits and withdrawals update instantly. Safe ledger processing guarantees isolation and consistency boundaries.</p>
            </div>
            <div class="service-card animate-scroll">
                <div class="card-icon">💸</div>
                <h3>Intra-Bank Transfers</h3>
                <p>Seamless processing across nodes. Moving balances instantly with strict rolling ledger verification logic.</p>
            </div>
        </div>
    </main>

    <!-- 4. INTERACTIVE ANNOUNCEMENT POP-UP MODAL -->
    <div id="noticeModal" class="modal-overlay">
        <div class="modal-box">
            <div class="modal-header">
                <h3>SDFC Security Notice</h3>
                <button class="close-modal-btn" onclick="closeNoticeModal()">&times;</button>
            </div>
            <div class="modal-body">
                <p><strong>System Alert:</strong> SDFC Bank will never ask for your transactional password, MPIN, or account credentials via email or SMS text.</p>
                <p>Our Spring Boot secure processing architecture runs 24/7 with active ledger auditing protocols to protect your transactions.</p>
            </div>
            <div class="modal-footer">
                <button class="modal-close-btn" onclick="closeNoticeModal()">I Understand</button>
            </div>
        </div>
    </div>

    <!-- 5. SYSTEM FOOTER -->
    <footer>
        <p>&copy; 2026 SDFC Bank Systems India. Built using Secure Spring Core Ledger Specifications. All Rights Reserved.</p>
    </footer>
	
    <!-- Linking external Standalone JavaScript file assets securely -->
	<script src="${pageContext.request.contextPath}/js/Home.js"></script>
</body>
</html>