<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Balance Details</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Fixed Background Image Overlay (Matching Balance page theme) */
        .background-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: linear-gradient(rgba(15, 5, 30, 0.8), rgba(15, 5, 30, 0.8)), 
                              url('${pageContext.request.contextPath}/views/logo.png');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            z-index: -1;
        }

        /* Fixed Viewport Configuration to block scrolling */
        html, body {
            height: 100%;
            overflow: hidden;
        }

        /* Navbar Layout */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 50px;
            background: rgba(15, 5, 30, 0.95);
            border-bottom: 2px solid #8e44ad;
            height: 10vh;
        }

        .logo {
            color: #ffffff;
            font-size: 24px;
            font-weight: bold;
            letter-spacing: 1px;
        }

        .menu a {
            color: #bdc3c7;
            text-decoration: none;
            margin: 0 15px;
            font-size: 14px;
            font-weight: 600;
            transition: 0.3s;
        }

        .menu a:hover, .menu a.active {
            color: #bb86fc;
        }

        /* Centered Wrapper Layout */
        .content-wrapper {
            height: 90vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        /* Transparent Purple Glassmorphism Statement Card */
        .statement-card {
            background: rgba(255, 255, 255, 0.07);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            padding: 35px 40px;
            border-radius: 16px;
            width: 100%;
            max-width: 480px;
            box-shadow: 0 12px 40px rgba(142, 68, 173, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.15);
            
            /* Smooth slide up entry animation */
            animation: cardSlideUp 0.6s cubic-bezier(0.16, 1, 0.3, 1) forwards;
        }

        .statement-card h2 {
            color: #ffffff;
            font-size: 24px;
            margin-bottom: 5px;
            text-align: center;
        }

        .statement-card p.subtitle {
            color: #bb86fc;
            font-size: 13px;
            text-align: center;
            margin-bottom: 25px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .divider {
            height: 1px;
            background: rgba(255, 255, 255, 0.1);
            margin-bottom: 25px;
        }

        /* Modernized Data Presentation Layout */
        .data-grid {
            display: flex;
            flex-direction: column;
            gap: 16px;
            margin-bottom: 30px;
        }

        .data-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-bottom: 12px;
            border-bottom: 1px dashed rgba(255, 255, 255, 0.08);
        }

        .data-row:last-child {
            border-bottom: none;
            padding-bottom: 0;
        }

        .data-label {
            color: #b3b3b3;
            font-size: 14px;
            font-weight: 500;
        }

        .data-value {
            color: #ffffff;
            font-size: 15px;
            font-weight: 600;
            text-align: right;
        }

        /* Special Styling highlighting the live balance numeric row */
        .balance-row {
            background: rgba(187, 134, 252, 0.1);
            padding: 12px 15px;
            border-radius: 8px;
            border: 1px solid rgba(187, 134, 252, 0.2);
            border-bottom: 1px solid rgba(187, 134, 252, 0.2);
        }

        .balance-row .data-label {
            color: #ffffff;
            font-weight: bold;
        }

        .balance-row .data-value {
            color: #2ecc71; /* Safe Green for available funds balance */
            font-size: 18px;
            font-weight: 700;
        }

        /* Error/Exception Alert Message Block */
        .error-block {
            background: rgba(231, 76, 60, 0.15);
            border: 1px solid rgba(231, 76, 60, 0.3);
            color: #e74c3c;
            padding: 12px;
            border-radius: 6px;
            font-size: 14px;
            font-weight: 600;
            text-align: center;
            margin-bottom: 25px;
        }

        /* Action Link Formatting Button */
        .btn-back {
            display: block;
            width: 100%;
            padding: 12px;
            background: transparent;
            color: #ffffff;
            border: 2px solid rgba(255, 255, 255, 0.2);
            border-radius: 6px;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            font-size: 15px;
            transition: 0.3s;
        }

        .btn-back:hover {
            background: #ffffff;
            color: #15051e;
            border-color: #ffffff;
            box-shadow: 0 4px 15px rgba(255, 255, 255, 0.2);
        }

        /* Keyframe Animations */
        @keyframes cardSlideUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Navbar Layout -->
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
        
    </nav>

    <!-- Centered Content Wrapper -->
    <div class="content-wrapper">
        <div class="statement-card">
            <h2>Account Details</h2>
            <p class="subtitle">Live Balance Inquiry</p>
            <div class="divider"></div>

            <!-- Conditional Error Message Render -->
            <%-- If the error message string ${msg} is empty, the browser auto-hides this clean container block --%>
            <c:if test="${not empty msg}">
                <div class="error-block">${msg}</div>
            </c:if>
            <%-- Simple fallback if your controller isn't rendering JSTL core tags library yet --%>
            <h4 style="color: #e74c3c; text-align: center; margin-bottom: 15px; font-size: 14px;">${msg}</h4>

            <!-- Data Presentation Grid Block -->
            <div class="data-grid">
                <div class="data-row">
                    <span class="data-label">Account Holder</span>
                    <span class="data-value">${bank.name}</span>
                </div>
                
                <div class="data-row">
                    <span class="data-label">Account Number</span>
                    <span class="data-value">${bank.getAcc_number()}</span>
                </div>

				<div class="data-row balance-row">
				    <span class="data-label">Current Balance</span>
				    
				    <span class="data-value">&#8377; ${bank.amount}</span>
				</div>


                <div class="data-row">
                    <span class="data-label">Mobile Number</span>
                    <span class="data-value">${bank.mobile}</span>
                </div>
            </div>

            <!-- Updated Return Action Route Link pointing to your Capital-H file -->
          
			<a href="${pageContext.request.contextPath}/views/Home.jsp" class="btn-back">Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
