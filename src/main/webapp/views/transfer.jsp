<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Transaction Status</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

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

        html, body {
            height: 100%;
            overflow: hidden;
        }

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

        .success-wrapper {
            height: 90vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

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

        .icon-container {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 36px;
            margin: 0 auto 25px auto;
            background: rgba(0, 210, 255, 0.1);
            border: 2px solid #00d2ff;
            color: #00d2ff;
            animation: bounceGlowSuccess 2s infinite ease-in-out;
        }

        .status-title {
            font-size: 26px;
            margin-bottom: 12px;
            font-weight: bold;
            color: #00d2ff;
        }

        .success-message {
            color: #ffffff;
            font-size: 15px;
            line-height: 1.6;
            margin-bottom: 30px;
            opacity: 0;
            animation: textFadeIn 0.5s ease-out 0.5s forwards;
        }

        .action-link {
            display: inline-block;
            padding: 12px 30px;
            text-decoration: none;
            font-weight: bold;
            border-radius: 25px;
            transition: 0.3s;
            opacity: 0;
            animation: textFadeIn 0.5s ease-out 0.8s forwards;
            background: #00d2ff;
            color: #05141e;
            box-shadow: 0 4px 15px rgba(0, 210, 255, 0.3);
        }

        .action-link:hover {
            background: #ffffff;
            color: #05141e;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(255, 255, 255, 0.4);
        }

        @keyframes cardFadeIn { from { opacity: 0; transform: translateY(20px); } to { opacity: 1; transform: translateY(0); } }
        @keyframes textFadeIn { from { opacity: 0; transform: translateY(10px); } to { opacity: 1; transform: translateY(0); } }
        @keyframes bounceGlowSuccess {
            0%, 100% { transform: translateY(0); box-shadow: 0 0 0 0 rgba(0, 210, 255, 0.4); }
            50% { transform: translateY(-6px); box-shadow: 0 10px 20px 0 rgba(0, 210, 255, 0.2); }
        }
    </style>
</head>
<body>
    <div class="background-overlay"></div>
    
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
    </nav>

    <div class="success-wrapper">
        <div class="success-card">
            
            <div class="icon-container">⇆</div>
            <h1 class="status-title">Transaction Details</h1>
            
            <!-- Controller se aane wala message seedhe yahan dikhega -->
            <p class="success-message">${msg}</p>
            
            <a href="${pageContext.request.contextPath}/Money" class="action-link">Back to Transfer Form</a>
          
        </div>
    </div>
</body>
</html>
