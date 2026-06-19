<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Account Creation</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Fixed Background Image Overlay matching your theme */
        .background-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)), 
                              url('${pageContext.request.contextPath}/views/logo.png');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            z-index: -1;
        }

        html, body {
            height: 100%;
            overflow: hidden; /* Disables scrolling */
        }

        /* Navbar Layout */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 50px;
            background: rgba(0, 40, 80, 0.95);
            border-bottom: 2px solid #0056b3;
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
            color: #00d2ff;
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
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            padding: 40px;
            border-radius: 16px;
            width: 100%;
            max-width: 480px;
            text-align: center;
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.4);
            border: 1px solid rgba(255, 255, 255, 0.2);
            animation: cardFadeIn 0.6s ease-out forwards;
        }

        /* Dynamic Checkmark Animation Components */
        .checkmark-wrapper {
            width: 80px;
            height: 80px;
            margin: 0 auto 25px auto;
            position: relative;
        }

        .circle {
            width: 80px;
            height: 80px;
            border: 4px solid rgba(46, 204, 113, 0.2);
            border-radius: 50%;
            position: absolute;
        }

        .animated-circle {
            width: 80px;
            height: 80px;
            border: 4px solid #2ecc71;
            border-radius: 50%;
            position: absolute;
            border-top-color: transparent;
            border-left-color: transparent;
            animation: spin 0.6s linear forwards;
        }

        .checkmark {
            font-size: 40px;
            color: #2ecc71;
            line-height: 80px;
            opacity: 0;
            transform: scale(0.5);
            animation: checkPop 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275) 0.5s forwards;
        }

        /* Typography Styling */
        .success-title {
            color: #2ecc71;
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
            animation: textFadeIn 0.5s ease-out 0.8s forwards;
        }

        /* Direct Action Button */
        .action-link {
            display: inline-block;
            padding: 12px 30px;
            background: #00d2ff;
            color: #002850;
            text-decoration: none;
            font-weight: bold;
            border-radius: 25px;
            transition: 0.3s;
            box-shadow: 0 4px 15px rgba(0, 210, 255, 0.3);
            opacity: 0;
            animation: textFadeIn 0.5s ease-out 1s forwards;
        }

        .action-link:hover {
            background: #ffffff;
            color: #002850;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(255, 255, 255, 0.4);
        }

        /* Keyframe Animations */
        @keyframes cardFadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        @keyframes checkPop {
            0% { opacity: 0; transform: scale(0.5); }
            100% { opacity: 1; transform: scale(1); }
        }

        @keyframes textFadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
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
            
            <!-- Animated Checkmark Module -->
            <div class="checkmark-wrapper">
                <div class="circle"></div>
                <div class="animated-circle"></div>
                <div class="checkmark">✓</div>
            </div>

            <h1 class="success-title">Account Created Successfully!</h1>
            <p class="success-message">
                Welcome to SDFC Bank. Great!! , Your dynamic internet banking portfolio has been generated. You can now manage deposits and live card routing panels immediately.
            </p>
            
			<a href="${pageContext.request.contextPath}/views/Home.jsp" class="action-link">Back to Dashboard</a>

        </div>
    </div>
</body>
</html>
