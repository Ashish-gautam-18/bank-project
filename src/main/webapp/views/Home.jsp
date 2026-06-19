<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Premium Digital Banking Portal</title>
    <!-- Linking external CSS stylesheet assets cleanly using context mappings -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bank-style.css">
    
    <!-- Embedded CSS for the Dynamic Navigation Elements -->
    <style>
		
		@keyframes logoPulse {
		    0% { transform: scale(1); box-shadow: 0 0 5px rgba(0, 210, 255, 0.4); }
		    100% { transform: scale(1.06); box-shadow: 0 0 15px rgba(0, 210, 255, 0.8); }
		}

        /* Base styles for the dynamic Admin button */
        .menu .admin-btn {
            display: inline-flex !important;
            align-items: center;
            gap: 8px;
            padding: 6px 14px;
            margin: 0 6px;
            background: linear-gradient(135deg, #001f3f, #0056b3) !important;
            color: #00d2ff !important;
            font-weight: bold !important;
            border: 1px solid #00d2ff !important;
            border-radius: 20px !important;
            text-decoration: none !important;
            box-shadow: 0 0 5px rgba(0, 210, 255, 0.2);
            
            /* Handles the smooth animations for sizing, color, and depth */
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275) !important;
        }

        /* The dynamic hover state: Grows larger, flips colors, and glows */
        .menu .admin-btn:hover {
            transform: scale(1.15) translateY(-2px); /* Makes the link grow and lift up */
            background: linear-gradient(135deg, #00d2ff, #0056b3) !important;
            color: #ffffff !important;
            border-color: #ffffff !important;
            box-shadow: 0 5px 15px rgba(0, 210, 255, 0.6), 0 0 30px rgba(0, 210, 255, 0.3);
        }

        /* Base style for the gear emoji container */
        .admin-icon {
            display: inline-block;
            transition: transform 0.6s ease-in-out;
        }

        /* Spins the gear icon a full 360 degrees on hover */
        .menu .admin-btn:hover .admin-icon {
            transform: rotate(360deg);
        }

        /* Search styling adjustments to match up-top alignment layout */
        .navbar .Search {
            display: flex;
            align-items: center;
            margin-left: auto; /* Pushes the search form to the far right edge of your bar */
        }

        .navbar .srch {
            padding: 6px 12px;
            border: 1px solid #ced4da;
            border-radius: 4px 0 0 4px;
            outline: none;
        }

        .navbar .btn {
            padding: 6px 14px;
            background-color: #0056b3;
            color: white;
            border: 1px solid #0056b3;
            border-radius: 0 4px 4px 0;
            cursor: pointer;
            transition: background 0.3s;
        }

        .navbar .btn:hover {
            background-color: #00d2ff;
            border-color: #00d2ff;
            color: #001f3f;
        }
    </style>
</head>
<body>

	<!-- 2. STICKY DYNAMIC NAVIGATION BAR (पूर्ण रूप से संरेखित और फिक्स किया गया) -->
	<nav class="navbar" style="position: sticky; top: 0; z-index: 1000; display: flex; align-items: center; width: 100%; background: #00152b; padding: 12px 24px; box-shadow: 0 4px 15px rgba(0,0,0,0.4); border-bottom: 2px solid #0056b3; box-sizing: border-box;">
	    
	    <!-- Left Side: Logo Area (बिना किसी एक्स्ट्रा स्पेस के) -->
	    <div class="logo-area" style="display: flex; align-items: center; cursor: pointer; transition: transform 0.3s ease; flex-shrink: 0;" onmouseover="this.style.transform='scale(1.03)'" onmouseout="this.style.transform='scale(1)'">
	        <!-- Main Corporate Image Asset -->
	        <img src="${pageContext.request.contextPath}/images/logo.png" alt="SDFC" class="bank-logo" style="height: 35px; width: auto; object-fit: contain;" 
	             onerror="this.style.display='none'; document.getElementById('fallback-icon').style.display='inline-flex';">
	        
	        <!-- Backup Icon (Runs automatically if image path fails) -->
	        <span id="fallback-icon" style="display: none; align-items: center; justify-content: center; width: 34px; height: 34px; background: linear-gradient(135deg, #00d2ff, #0056b3); color: white; font-size: 18px; border-radius: 8px; margin-right: 10px; box-shadow: 0 0 10px rgba(0, 210, 255, 0.6); animation: logoPulse 2s infinite alternate;">🛡️</span>
	        
	        <!-- Branding Text -->
	        <span class="logo-text" style="color: #ffffff; font-weight: 800; font-size: 20px; letter-spacing: 1.5px; font-family: 'Poppins', sans-serif; text-shadow: 0 0 8px rgba(0, 210, 255, 0.3); margin-left: 8px;">
	            SDFC <span style="color: #00d2ff;">BANK</span>
	        </span>
	    </div>

	    <!-- Middle: Menu Links (एक सिंगल लाइन में परफेक्ट सीक्वेंस और गैप के साथ) -->
	    <div class="menu" style="display: flex !important; flex-direction: row !important; align-items: center !important; flex-wrap: nowrap !important; gap: 15px !important; margin-left: 30px !important; margin-right: auto !important; width: auto !important; float: none !important;">
	        <a href="/client-home" class="active" style="white-space: nowrap;">HOME</a>
	        
	        <!-- Premium Dynamic Admin Button -->
	        <a href="/" class="admin-btn" style="white-space: nowrap;">
	            <span class="admin-icon">⚙️</span> ADMIN DASHBOARD
	        </a>
	        
	        <a href="/account" style="white-space: nowrap;">NEW ACCOUNT</a>
	        <a href="/balance" style="white-space: nowrap;">BALANCE</a>
	        <a href="/depo" style="white-space: nowrap;">DEPOSIT</a>
	        <a href="/withdrow" style="white-space: nowrap;">WITHDRAW</a>
	        <a href="/Money" style="white-space: nowrap;">TRANSFER</a>
	        <a href="/close" style="white-space: nowrap;">CLOSE A/C</a>
	        <a href="${pageContext.request.contextPath}/views/about-rules.jsp" style="white-space: nowrap;">ABOUT</a>
	    </div>
	     
	    <!-- Right Side: Search Block (दाहिनी तरफ फिक्स) -->
	    <div class="Search" style="margin-left: 20px; flex-shrink: 0;">
	        <form action="${pageContext.request.contextPath}/findAccount" method="GET" style="display: flex; margin: 0;">
	            <input class="srch" type="search" name="search_acc_number" placeholder="Enter Account..." required pattern="\d+" title="Numbers only" style="padding: 6px 12px; border: 1px solid #ced4da; border-radius: 4px 0 0 4px; outline: none; width: 160px;">
	            <button type="submit" class="btn" style="padding: 6px 14px; background-color: #0056b3; color: white; border: 1px solid #0056b3; border-radius: 0 4px 4px 0; cursor: pointer; transition: background 0.3s; white-space: nowrap;">Search</button>
	        </form>
	    </div>
	</nav>



    <!-- 1. IMAGE SLIDER HERO BANNER (3 Pages / Slides - Moves below the Navigation Bar) -->
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
