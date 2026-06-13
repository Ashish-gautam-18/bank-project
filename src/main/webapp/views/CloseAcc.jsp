<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Close Account</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Fixed Background Image Overlay with a deep Ruby Alert tint */
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
            background: rgba(25, 10, 15, 0.95);
            border-bottom: 2px solid #e74c3c; /* Crimson Ruby border accent */
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
            color: #e74c3c; /* Bright ruby on hover */
        }

        /* Form Content Wrapper Layout */
        .form-wrapper {
            height: 90vh; 
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        /* Transparent Ruby Glassmorphism Container */
        .form-container {
            background: rgba(255, 255, 255, 0.05); 
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            padding: 35px 40px;
            border-radius: 16px;
            width: 100%;
            max-width: 450px;
            box-shadow: 0 12px 45px rgba(231, 76, 34, 0.15); /* Ambient warning glow */
            border: 1px solid rgba(255, 255, 255, 0.12);
            text-align: center;
            
            /* Smooth drop-scale entry animation */
            animation: closureCardFade 0.5s ease-out forwards;
        }

        .form-container h2 {
            color: #e74c3c; 
            margin-bottom: 6px;
            font-size: 26px;
        }

        .form-container p.form-desc {
            color: #cda2a6;
            font-size: 13px;
            margin-bottom: 25px;
        }

        /* Input Elements Grouping and Formatting */
        .input-group {
            margin-bottom: 18px;
            text-align: left;
        }

        .input-group label {
            display: block;
            font-size: 13px;
            font-weight: 600;
            color: #ffffff;
            margin-bottom: 6px;
            letter-spacing: 0.5px;
        }

        .input-group input {
            width: 100%;
            padding: 11px 14px;
            background: rgba(255, 255, 255, 0.95); 
            border: 2px solid transparent;
            border-radius: 6px;
            font-size: 14px;
            outline: none;
            transition: 0.3s;
            color: #111111;
        }

        /* Ruby focus glow when active */
        .input-group input:focus {
            border-color: #e74c3c;
            box-shadow: 0 0 8px rgba(231, 76, 60, 0.5);
        }

        /* Action Buttons Row Configuration */
        .button-group {
            display: flex;
            gap: 15px;
            margin-top: 25px;
        }

        .btn-submit {
            flex: 2;
            padding: 12px;
            background: #e74c3c; 
            color: #ffffff;
            border: none;
            border-radius: 6px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
            box-shadow: 0 4px 15px rgba(231, 76, 60, 0.3);
        }

        .btn-submit:hover {
            background: #ffffff;
            color: #1a0a0f;
            transform: translateY(-2px);
        }

        .btn-clear {
            flex: 1;
            padding: 12px;
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

        @keyframes closureCardFade {
            from {
                opacity: 0;
                transform: translateY(20px) scale(0.97);
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
    
    <!-- Central SDFC Navbar Context links -->
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
        <div class="menu">
			<a href="/" class="active">HOME</a>
			         <a href="/account">NEW ACCOUNT</a>
			         <a href="/balance">BALANCE</a>
			         <a href="/depo">DEPOSIT</a>
			         <a href="/withdrow">WITHDRAW</a>
			         <a href="/Money">TRANSFER</a>
			         <a href="/close">CLOSE A/C</a>
			         <a href="${pageContext.request.contextPath}/views/about-rules.jsp">ABOUT</a>
			     </div>
    </nav>

    <!-- Centered Form Container -->
    <div class="form-wrapper">
        <div class="form-container">
            <h2>Account Deactivation</h2>
            <p class="form-desc">Verify your digital identity securely to request absolute ledger closure</p>
            
			
			
	
			<form action="${pageContext.request.contextPath}/confirmClose" method="POST">


                
                <div class="input-group">
                    <label>Account Number</label>
                    <input type="text" name="acc_number" placeholder="Enter target account number" required>
                </div>

                <div class="input-group">
                    <label>Account Holder Name</label>
                    <input type="text" name="name" placeholder="Enter full primary name" required>
                </div>

                <div class="input-group">
                    <label>Account Password</label>
                    <input type="password" name="password" placeholder="Enter security password" required>
                </div>

                <div class="button-group">
                    <button type="submit" class="btn-submit">Close Account</button>
                    <button type="reset" class="btn-clear">Clear</button>
                </div>
            </form>
        </div>
    </div>
</body>
