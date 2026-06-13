<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Premium Digital Banking Portal</title>
    <!-- Linking external CSS stylesheet assets cleanly using context mappings -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bank-style.css">
</head>
<body>

    <!-- 1. IMAGE SLIDER HERO BANNER (3 Pages / Slides) -->
    <header class="slider-container">
        <div class="slide active" style="background-image: linear-gradient(rgba(0, 26, 51, 0.75), rgba(0, 26, 51, 0.75)), url('${pageContext.request.contextPath}/images/slide1.jpg');">
            <div class="slide-content">
                <h1 class="animate-text">Welcome to SDFC Bank</h1>
                <p class="animate-text delay-1">Secure, Real-Time Digital Banking Ecosystem.</p>
                <div class="slide-actions animate-text delay-2">
                    <a href="/account" class="hero-btn">Open Instant Account</a>
                    <button class="hero-btn-outline" onclick="openNoticeModal()">View Bank Notices</button>
                </div>
            </div>
        </div>
        <div class="slide" style="background-image: linear-gradient(rgba(0, 40, 80, 0.8), rgba(0, 40, 80, 0.8)), url('${pageContext.request.contextPath}/images/slide2.jpg');">
            <div class="slide-content">
                <h1>Next-Gen Fund Transfers</h1>
                <p>Zero data inconsistency. Powered by automated safe ledger routing logic.</p>
                <div class="slide-actions">
                    <a href="/Money" class="hero-btn">Transfer Funds Now</a>
                </div>
            </div>
        </div>
        <div class="slide" style="background-image: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)), url('${pageContext.request.contextPath}/images/slide3.jpg');">
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

    <!-- 2. STICKY DYNAMIC NAVIGATION BAR -->
    <nav class="navbar">
        <div class="logo-area">
            <img src="${pageContext.request.contextPath}/images/logo.png" alt="SDFC" class="bank-logo" onerror="this.style.display='none'">
            <span class="logo-text">SDFC BANK</span>
        </div>
        <div class="menu">
            <a href="/client-home" class="active">HOME</a>
            
            <!-- Safe backward link connecting home portal layout directly to control panel root -->
            <a href="/" style="color: #00d2ff; font-weight: bold;">⚙️ ADMIN DASHBOARD</a>
            
            <a href="/account">NEW ACCOUNT</a>
            <a href="/balance">BALANCE</a>
            <a href="/depo">DEPOSIT</a>
            <a href="/withdrow">WITHDRAW</a>
            <a href="/Money">TRANSFER</a>
            <a href="/close">CLOSE A/C</a>
            <a href="${pageContext.request.contextPath}/views/about-rules.jsp">ABOUT</a>
        </div>
        <div class="Search">
            <form action="${pageContext.request.contextPath}/findAccount" method="GET">
                <input class="srch" type="search" name="search_acc_number" placeholder="Enter Account..." required pattern="\d+" title="Numbers only">
                <button type="submit" class="btn">Search</button>
            </form>
        </div>
    </nav>

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
    <script src="${pageContext.request.contextPath}/js/bank-script.js"></script>
</body>
</html>
