<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Withdrawal Receipt</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Fixed Background Image Overlay (Matching Withdrawal theme) */
        .background-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: linear-gradient(rgba(30, 10, 10, 0.85), rgba(30, 10, 10, 0.85)), 
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
            background: rgba(30, 10, 10, 0.95);
            border-bottom: 2px solid #e67e22;
            height: 10vh;
        }

        .logo {
            color: #ffffff;
            font-size: 24px;
            font-weight: bold;
            letter-spacing: 1px;
        }

        /* Centered Wrapper Layout */
        .content-wrapper {
            height: 90vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        /* Transparent Glassmorphic Receipt Card */
        .receipt-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            padding: 35px;
            border-radius: 16px;
            width: 100%;
            max-width: 420px;
            box-shadow: 0 12px 40px rgba(230, 126, 34, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.12);
            text-align: center;
            animation: receiptDrop 0.6s cubic-bezier(0.19, 1, 0.22, 1) forwards;
        }

        /* Animated Pulse Orange Ring Icon */
        .icon-container {
            width: 70px;
            height: 70px;
            background: rgba(230, 126, 34, 0.15);
            border: 2px solid #e67e22;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #e67e22;
            font-size: 32px;
            font-weight: bold;
            margin: 0 auto 20px auto;
            animation: pulseGlow 2s infinite ease-in-out;
        }

        .success-msg { 
            color: #e67e22; 
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .summary-txt {
            color: #cdafa2;
            font-size: 14px;
            margin-bottom: 25px;
        }

        .line { 
            border-bottom: 1px dashed rgba(255, 255, 255, 0.15); 
            margin: 15px 0; 
        }

        /* Row Data Layout Matrices */
        .row { 
            display: flex; 
            justify-content: space-between; 
            margin-bottom: 12px;
            font-size: 15px;
        }

        .row span:first-child {
            color: #b3b3b3;
        }

        .row span:last-child {
            color: #ffffff;
            font-weight: 600;
        }

        /* Highlighting cash outflow styling */
        .withdraw-amt {
            color: #e74c3c !important; 
            font-weight: bold;
        }

        /* Grand Total New Balance Box */
        .total-box {
            background: rgba(230, 126, 34, 0.1);
            padding: 12px 15px;
            border-radius: 8px;
            border: 1px solid rgba(230, 126, 34, 0.2);
            margin-top: 15px;
        }

        .total-box span:first-child {
            color: #ffffff;
            font-weight: bold;
        }

        .total-box span:last-child {
            color: #e67e22;
            font-size: 18px;
            font-weight: 700;
        }

        /* Return Action Dashboard Redirect Button */
        .btn-home {
            display: block;
            width: 100%;
            padding: 12px;
            background: #e67e22;
            color: #1e0a0a;
            border: none;
            border-radius: 6px;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            font-size: 15px;
            margin-top: 25px;
            transition: 0.3s;
            box-shadow: 0 4px 15px rgba(230, 126, 34, 0.3);
        }

        .btn-home:hover {
            background: #ffffff;
            color: #1e0a0a;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(255, 255, 255, 0.3);
        }

        @keyframes receiptDrop {
            from { opacity: 0; transform: translateY(-40px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes pulseGlow {
            0% { box-shadow: 0 0 0 0 rgba(230, 126, 34, 0.4); }
            70% { box-shadow: 0 0 0 12px rgba(230, 126, 34, 0); }
            100% { box-shadow: 0 0 0 0 rgba(230, 126, 34, 0); }
        }
    </style>
</head>
<body>
    <div class="background-overlay"></div>
    
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
    </nav>

    <div class="content-wrapper">
        <div class="receipt-card">
            
            <div class="icon-container">&#10003;</div>

            <h3 class="success-msg">Withdrawal Successful!</h3>
            <p class="summary-txt">E-Receipt Transaction Summary</p>
            <div class="line"></div>
            
            
            <div class="row">
                <span>Withdrawn Amount:</span>
                <span class="withdraw-amt">- &#8377; ${withdraw}</span>
            </div>
            
            <div class="row">
                <span>Before Balance:</span>
                <span>&#8377; ${before}</span>
            </div>
            
            <div class="line"></div>
            
            <div class="row total-box">
                <span>Remaining Balance:</span>
                <span>&#8377; ${afterwithdraw}</span>
            </div>
            
            <!-- FIXED: Redirecting through base landing route handler mapping -->
            <a href="${pageContext.request.contextPath}/" class="btn-home">Back to Home</a>
			  
        </div>
    </div>
</body>
</html>
