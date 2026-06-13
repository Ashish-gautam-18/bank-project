<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Transfer Successful</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Fixed Background Image Overlay (Matching Transfer theme) */
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
            background: rgba(5, 20, 30, 0.95);
            border-bottom: 2px solid #00d2ff;
            height: 10vh;
        }

        .logo {
            color: #ffffff;
            font-size: 24px;
            font-weight: bold;
            letter-spacing: 1px;
        }

        /* Centered Wrapper Layout */
        .success-wrapper {
            height: 90vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        /* Transparent Glassmorphism Card Container */
        .success-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            padding: 40px;
            border-radius: 16px;
            width: 100%;
            max-width: 480px;
            text-align: center;
            box-shadow: 0 12px 40px rgba(0, 210, 255, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.12);
            animation: cardFadeIn 0.6s ease-out forwards;
        }

        /* Animated Success Arrow Circle module */
        .icon-container {
            width: 80px;
            height: 80px;
            background: rgba(0, 210, 255, 0.1);
            border: 2px solid #00d2ff;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #00d2ff;
            font-size: 36px;
            margin: 0 auto 25px auto;
            animation: bounceGlow 2s infinite ease-in-out;
        }

        /* Typography Styling */
        .success-title {
            color: #00d2ff;
            font-size: 26px;
            margin-bottom: 12px;
            font-weight: bold;
        }

        .success-message {
            color: #ffffff;
            font-size: 15px;
            line-height: 1.6;
            margin-bottom: 30px;
            opacity: 0;
            animation: textFadeIn 0.5s ease-out 0.5s forwards;
        }

        /* Action Link Formatting Button */
        .action-link {
            display: inline-block;
            padding: 12px 30px;
            background: #00d2ff;
            color: #05141e;
            text-decoration: none;
            font-weight: bold;
            border-radius: 25px;
            transition: 0.3s;
            box-shadow: 0 4px 15px rgba(0, 210, 255, 0.3);
            opacity: 0;
            animation: textFadeIn 0.5s ease-out 0.8s forwards;
        }

        .action-link:hover {
            background: #ffffff;
            color: #05141e;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(255, 255, 255, 0.4);
        }

        /* Keyframe Animations */
        @keyframes cardFadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes textFadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes bounceGlow {
            0%, 100% { transform: translateY(0); box-shadow: 0 0 0 0 rgba(0, 210, 255, 0.4); }
            50% { transform: translateY(-6px); box-shadow: 0 10px 20px 0 rgba(0, 210, 255, 0.2); }
        }
    </style>
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Navbar Structure -->
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
    </nav>

    <!-- Success Interface Display Layout -->
    <div class="success-wrapper">
        <div class="success-card">
            
            <!-- Animated Flying Arrow Transfer Circle Icon -->
            <div class="icon-container">&#8646;</div>

            <h1 class="success-title">Transfer Successful!</h1>
            <p class="success-message">
                Your money has been wired successfully, Ashish. SDFC transaction clearance units have successfully routed and settled the ledger balance into the target account.
            </p>
            
            <!-- FIXED HOME DASHBOARD DIRECTION ROUTE LINK -->
            <a href="${pageContext.request.contextPath}/" class="action-link">Back to Dashboard</a>
          
        </div>
    </div>
</body>
</html>
