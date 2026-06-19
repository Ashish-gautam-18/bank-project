<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Secure Money Transfer</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Fixed Background Image Overlay with a deep Cyber Navy/Cyan tint */
        .background-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: linear-gradient(rgba(5, 20, 30, 0.85), rgba(5, 20, 30, 0.85)), 
                              url('${pageContext.request.contextPath}/views/logo.png');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            z-index: -1;
        }

        /* Fixed Viewport Configuration to block page scrolling */
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
            background: rgba(5, 20, 30, 0.95);
            border-bottom: 2px solid #00d2ff; /* Cyber Cyan Accent border */
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
            color: #00d2ff; /* Vibrant cyan on hover */
        }

        /* Form Content Wrapper Layout */
        .form-wrapper {
            height: 90vh; 
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 15px;
        }

        /* Transparent Cyan Glassmorphism Container */
        .form-container {
            background: rgba(255, 255, 255, 0.05); 
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            padding: 25px 35px;
            border-radius: 16px;
            width: 100%;
            max-width: 650px; /* Wider to accommodate 2-column input grid */
            box-shadow: 0 12px 45px rgba(0, 210, 255, 0.15); /* Cyan ambient glow */
            border: 1px solid rgba(255, 255, 255, 0.12);
            text-align: center;
            
            /* Clean zoom fade page entry animation */
            animation: transferCardFade 0.5s ease-out forwards;
        }

        .form-container h2 {
            color: #00d2ff; 
            margin-bottom: 5px;
            font-size: 24px;
        }

        .form-container p.form-desc {
            color: #a2b0b4;
            font-size: 13px;
            margin-bottom: 20px;
        }

        /* Two-Column Grid Setup */
        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr; 
            gap: 12px 20px;
        }

        /* Forces critical fields to stretch fully across both columns */
        .full-width {
            grid-column: span 2;
        }

        /* Section divider header styling inside the form */
        .section-divider {
            grid-column: span 2;
            color: #f1c40f; /* Electric Gold for the recipient alert section */
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-align: left;
            margin: 5px 0;
            border-bottom: 1px dashed rgba(255, 255, 255, 0.15);
            padding-bottom: 3px;
        }

        /* Input Elements Grouping and Formatting */
        .input-group {
            text-align: left;
        }

        .input-group label {
            display: block;
            font-size: 13px;
            font-weight: 600;
            color: #ffffff;
            margin-bottom: 5px;
            letter-spacing: 0.5px;
        }

        .input-group input {
            width: 100%;
            padding: 10px 14px;
            background: rgba(255, 255, 255, 0.95); 
            border: 2px solid transparent;
            border-radius: 6px;
            font-size: 14px;
            outline: none;
            transition: 0.3s;
            color: #111111;
        }

        /* Bright cyan input glow when typing */
        .input-group input:focus {
            border-color: #00d2ff;
            box-shadow: 0 0 8px rgba(0, 210, 255, 0.5);
        }

        /* Action Buttons Row Configuration */
        .button-group {
            display: flex;
            gap: 15px;
            margin-top: 20px;
        }

        .btn-submit {
            flex: 2;
            padding: 11px;
            background: #00d2ff; 
            color: #05141e;
            border: none;
            border-radius: 6px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
            box-shadow: 0 4px 15px rgba(0, 210, 255, 0.3);
        }

        .btn-submit:hover {
            background: #ffffff;
            color: #05141e;
            transform: translateY(-2px);
        }

        .btn-clear {
            flex: 1;
            padding: 11px;
            background: transparent;
            color: #ffffff;
            border: 2px solid rgba(255, 255, 255, 0.25);
            border-radius: 6px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-clear:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: #ffffff;
        }

        @keyframes transferCardFade {
            from {
                opacity: 0;
                transform: translateY(15px) scale(0.97);
            }
            to {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }
    </style>
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Central SDFC Navbar -->
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
        <div class="menu">
			<a href="/client-home" class="active">HOME</a>
			         <a href="/account">NEW ACCOUNT</a>
			         <a href="/balance">BALANCE</a>
			         <a href="/depo">DEPOSIT</a>
			         <a href="/withdrow">WITHDRAW</a>
			         <a href="/Money">TRANSFER</a>
			         <a href="/close">CLOSE A/C</a>
			         <a href="${pageContext.request.contextPath}/views/about-rules.jsp">ABOUT</a>
			     </div>
    </nav>

    <!-- Content Centering Layer -->
    <div class="form-wrapper">
        <div class="form-container">
            <h2>Instant Fund Transfer</h2>
            <p class="form-desc">Send secure, real-time electronic funds immediately to any target account</p>
            
            <form action="transfermoney" method="post">
                <div class="form-grid">
                    
                    <div class="section-divider" style="margin-top: 0;">Your Account Details</div>

                    <div class="input-group">
                        <label>Your Account Number</label>
                        <input type="text" name="acc_number" placeholder="Enter your account no" required>
                    </div>

                    <div class="input-group">
                        <label>Your Name</label>
                        <input type="text" name="name" placeholder="Enter your full name" required>
                    </div>

                    <div class="input-group full-width">
                        <label>Secure Password</label>
                        <input type="password" name="password" placeholder="Enter transaction password" required>
                    </div>

                    <div class="section-divider">Beneficiary Recipient Details</div>

                    <div class="input-group">
                        <label>Target Account Number</label>
                        <input type="text" name="targetAcc" placeholder="Enter recipient account no" required>
                    </div>

					<div class="input-group">
					    
					    <label>Transfer Amount (&#8377;)</label>
					    
					    <!-- MODIFIED: Changed type to number to block alphabets instantly -->
					    <input type="number" name="transferAmount" min="1" placeholder="Enter amount to send" required>
					</div>


                </div>

                <div class="button-group">
                    <button type="submit" class="btn-submit">Initiate Transfer</button>
                    <button type="reset" class="btn-clear">Clear</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
