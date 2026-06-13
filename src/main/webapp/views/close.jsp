<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Account Closed</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Fixed Background Image Overlay (Matching Closure theme) */
        .background-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: linear-gradient(rgba(25, 10, 15, 0.88), rgba(25, 10, 15, 0.88)), 
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
            background: rgba(25, 10, 15, 0.95);
            border-bottom: 2px solid #e74c3c;
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

        .menu a:hover {
            color: #e74c3c;
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
            box-shadow: 0 12px 40px rgba(231, 76, 60, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.12);
            animation: cardFadeIn 0.6s ease-out forwards;
        }

        /* Animated Termination Padlock Module */
        .icon-container {
            width: 80px;
            height: 80px;
            background: rgba(231, 76, 60, 0.1);
            border: 2px solid #e74c3c;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #e74c3c;
            font-size: 32px;
            margin: 0 auto 25px auto;
            animation: pulseWarning 2s infinite ease-in-out;
        }

        /* Typography Styling */
        .success-title {
            color: #e74c3c;
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

        /* Action Dashboard Redirect Button */
        .action-link {
            display: inline-block;
            padding: 12px 30px;
            background: #e74c3c;
            color: #ffffff;
            text-decoration: none;
            font-weight: bold;
            border-radius: 25px;
            transition: 0.3s;
            box-shadow: 0 4px 15px rgba(231, 76, 60, 0.3);
            opacity: 0;
            animation: textFadeIn 0.5s ease-out 0.8s forwards;
        }

        .action-link:hover {
            background: #ffffff;
            color: #1a0a0f;
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

        @keyframes pulseWarning {
            0% { box-shadow: 0 0 0 0 rgba(231, 76, 60, 0.4); }
            70% { box-shadow: 0 0 0 12px rgba(231, 76, 60, 0); }
            100% { box-shadow: 0 0 0 0 rgba(231, 76, 60, 0); }
        }
    </style>
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Navbar Structure -->
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
       
    </nav>

    <!-- Success Display Layout -->
    <div class="success-wrapper">
        <div class="success-card">
            
            <!-- Secure Warning Status Lock Symbol -->
            <div class="icon-container">✕</div>

            <h1 class="success-title">Account Closed!</h1>
            <p class="success-message">
                Your request has been executed completely, Ashish. SDFC Bank records have successfully processed and archived the transaction ledger. Your active account profile is now safely closed.
            </p>
            
        
			<a href="${pageContext.request.contextPath}/views/Home.jsp" class="action-link">Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
