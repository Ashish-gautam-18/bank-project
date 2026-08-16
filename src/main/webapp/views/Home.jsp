<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Premium Digital Banking Portal</title>
    <link rel="icon" href="data:,">
    
    <!-- External CSS link -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Home.css">
</head>
<body>

	<!-- Top Navigation Bar -->
	<nav class="navbar">
	    
	    <!-- Logo Area -->
	    <div class="logo-area">
	        <img src="${pageContext.request.contextPath}/images/logo.png" alt="SDFC" class="bank-logo" 
	             onerror="this.style.display='none'; document.getElementById('fallback-icon').style.display='inline-flex';">
	        
	        <span id="fallback-icon">🛡️</span>
	        
	        <span class="logo-text">
	            SDFC <span class="logo-highlight">BANK</span>
	        </span>
	    </div>

	    <!-- Search Form -->
	    <div class="Search">
	        <form action="${pageContext.request.contextPath}/findAccount" method="GET">
	            <input class="srch" type="search" name="search_acc_number" placeholder="Enter Account..." required pattern="\d+" title="Numbers only">
	            <button type="submit" class="btn">Search</button>
	        </form>
	    </div>

	    <!-- Mobile Toggle Button -->
	    <button class="menu-toggle" onclick="toggleMenu()">
	        <span></span>
	        <span></span>
	        <span></span>
	    </button>

	    <!-- Menu Navigation Links -->
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


    <!-- Main Hero Slider (Original 3 Slides) -->
    <header class="slider-container">
        <!-- Slide 1 -->
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

        <!-- Slide 2 -->
        <div class="slide" style="background-image: repeating-linear-gradient(135deg, #0a3346 0px, #0a3346 45px, #0f4a78 45px, #0f4a78 90px);">
            <div class="slide-content">
                <h1>Next-Gen Fund Transfers</h1>
                <p>Zero data inconsistency. Powered by automated safe ledger routing logic.</p>
                <div class="slide-actions">
                    <a href="/Money" class="hero-btn">Transfer Funds Now</a>
                </div>
            </div>
        </div>

        <!-- Slide 3 -->
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
        
        <!-- Slider Dots (Original 3 Dots) -->
        <div class="slider-dots">
            <span class="dot active" onclick="currentSlide(0)"></span>
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
        </div>
    </header>


    <!-- NEW SECTION 1: Real-Time Live Interest Rates Bar (Slider Ke Niche) -->
    <section style="background: #001f3f; color: white; padding: 25px 20px; border-bottom: 3px solid #00d2ff;">
        <div style="max-width: 1200px; margin: 0 auto; display: flex; align-items: center; justify-content: space-between; flex-wrap: wrap; gap: 15px;">
            <div style="display: flex; align-items: center; gap: 10px;">
                <span style="font-size: 24px;">📈</span>
                <div>
                    <h4 style="margin: 0; color: #00d2ff; font-size: 16px;">SDFC LIVE INTEREST RATES</h4>
                    <p style="margin: 0; font-size: 12px; color: #bdc3c7;">Updated for Fiscal Year 2026</p>
                </div>
            </div>
            
            <div style="display: flex; gap: 20px; flex-wrap: wrap;">
                <div style="background: rgba(255,255,255,0.08); padding: 8px 16px; border-radius: 6px; border-left: 3px solid #00d2ff;">
                    <span style="font-size: 11px; color: #aaa; display: block;">SAVINGS A/C</span>
                    <strong style="font-size: 16px; color: #fff;">4.00% p.a.</strong>
                </div>
                <div style="background: rgba(255,255,255,0.08); padding: 8px 16px; border-radius: 6px; border-left: 3px solid #00d2ff;">
                    <span style="font-size: 11px; color: #aaa; display: block;">FIXED DEPOSIT</span>
                    <strong style="font-size: 16px; color: #fff;">7.25% p.a.</strong>
                </div>
                <div style="background: rgba(255,255,255,0.08); padding: 8px 16px; border-radius: 6px; border-left: 3px solid #00d2ff;">
                    <span style="font-size: 11px; color: #aaa; display: block;">HOME LOAN</span>
                    <strong style="font-size: 16px; color: #fff;">8.40% p.a.</strong>
                </div>
            </div>

            <a href="/depo" class="btn" style="text-decoration: none; display: inline-block;">Explore Deposits</a>
        </div>
    </section>


    <!-- Services Cards Section -->
    <main class="services-section">
        <h2 class="section-title">Core Operational Services</h2>
        <div class="services-container">
            <div class="service-card animate-scroll">
                <div class="card-icon">💳</div>
                <h3>Secure Account Creation</h3>
                <p>Register immediately with dynamic validations. Systems comply with modern multi-factor account validation protocols.</p>
            </div>
            <div class="service-card animate-scroll">
                <div class="card-icon">⚡</div>
                <h3>Real-Time Transactions</h3>
                <p>Deposits and withdrawals update instantly. Safe ledger processing guarantees isolation and consistency boundaries.</p>
            </div>
            <div class="service-card animate-scroll">
                <div class="card-icon">🔄</div>
                <h3>Intra-Bank Transfers</h3>
                <p>Seamless processing across nodes. Moving balances instantly with strict rolling ledger verification logic.</p>
            </div>
        </div>
    </main>


    <!-- NEW SECTION 2: Trust & Digital Banking Features (Vertical Addition) -->
    <section style="background: #ffffff; padding: 50px 20px; border-top: 1px solid #e2e8f0;">
        <div style="max-width: 1200px; margin: 0 auto; text-align: center;">
            <h2 class="section-title">Why Trust SDFC Digital Ledger?</h2>
            
            <div style="display: flex; justify-content: center; gap: 30px; flex-wrap: wrap; margin-top: 30px;">
                <!-- Card 1 -->
                <div style="flex: 1; min-width: 250px; background: #f8fafc; padding: 25px; border-radius: 8px; border: 1px solid #e2e8f0; text-align: left;">
                    <div style="font-size: 30px; margin-bottom: 10px;">🔒</div>
                    <h4 style="color: #002850; margin-bottom: 8px; font-size: 18px;">256-Bit SSL Security</h4>
                    <p style="color: #64748b; font-size: 13px; line-height: 1.5; margin: 0;">End-to-end encrypted ledger processing ensuring bank-grade protection for all transactions.</p>
                </div>

                <!-- Card 2 -->
                <div style="flex: 1; min-width: 250px; background: #f8fafc; padding: 25px; border-radius: 8px; border: 1px solid #e2e8f0; text-align: left;">
                    <div style="font-size: 30px; margin-bottom: 10px;">⚡</div>
                    <h4 style="color: #002850; margin-bottom: 8px; font-size: 18px;">Instant Settlement</h4>
                    <p style="color: #64748b; font-size: 13px; line-height: 1.5; margin: 0;">Real-time automated clearing system ensures zero delay in fund transfers and deposits.</p>
                </div>

                <!-- Card 3 -->
                <div style="flex: 1; min-width: 250px; background: #f8fafc; padding: 25px; border-radius: 8px; border: 1px solid #e2e8f0; text-align: left;">
                    <div style="font-size: 30px; margin-bottom: 10px;">🛡️</div>
                    <h4 style="color: #002850; margin-bottom: 8px; font-size: 18px;">ISO 27001 Certified</h4>
                    <p style="color: #64748b; font-size: 13px; line-height: 1.5; margin: 0;">Compliant with global financial security norms and continuous automated auditing.</p>
                </div>
            </div>
        </div>
    </section>


    <!-- Security Announcement Modal Popup -->
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

    <!-- Page Footer -->
    <footer>
        <p>&copy; 2026 SDFC Bank Systems India. Built using Secure Spring Core Ledger Specifications. All Rights Reserved.</p>
    </footer>
	
    <!-- External JavaScript file link -->
	<script src="${pageContext.request.contextPath}/js/Home.js"></script>
</body>
</html>