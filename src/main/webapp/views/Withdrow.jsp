<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Secure Cash Withdrawal</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Fixed Background Image Overlay with a deep Crimson tint */
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
            background: rgba(30, 10, 10, 0.95);
            border-bottom: 2px solid #e67e22; /* Warm Orange Accent border */
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
            color: #e67e22; /* Warm Ember orange on hover */
        }

        /* Form Content Wrapper Layout */
        .form-wrapper {
            height: 90vh; 
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        /* Transparent Crimson Glassmorphism Container */
        .form-container {
            background: rgba(255, 255, 255, 0.05); /* Highly transparent layer */
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            padding: 35px 40px;
            border-radius: 16px;
            width: 100%;
            max-width: 460px;
            box-shadow: 0 12px 45px rgba(230, 126, 34, 0.15); /* Ember ambient glow */
            border: 1px solid rgba(255, 255, 255, 0.12);
            text-align: center;
            
            /* Clean skew-slide-in page introduction animation */
            animation: withdrawCardFade 0.5s ease-out forwards;
        }

        .form-container h2 {
            color: #e67e22; 
            margin-bottom: 6px;
            font-size: 26px;
        }

        .form-container p.form-desc {
            color: #cdafa2;
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

        /* Bright warm orange input glow when typing */
        .input-group input:focus {
            border-color: #e67e22;
            box-shadow: 0 0 8px rgba(230, 126, 34, 0.5);
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
            background: #e67e22; 
            color: #1e0a0a;
            border: none;
            border-radius: 6px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
            box-shadow: 0 4px 15px rgba(230, 126, 34, 0.3);
        }

        .btn-submit:hover {
            background: #ffffff;
            color: #1e0a0a;
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

        /* Entry smooth animation */
        @keyframes withdrawCardFade {
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
    
    <!-- Central SDFC Navbar -->
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

    <!-- Content Centering Layer -->
    <div class="form-wrapper">
        <div class="form-container">
            <h2>Secure Cash Withdrawal</h2>
            <p class="form-desc">Debit secure real-time funds safely from your active ledger account</p>
            
            <form action="${pageContext.request.contextPath}/withd" method="POST">
                
                <div class="input-group">
                    <label>Account Number</label>
                    <input type="text" name="acc_number" placeholder="Enter primary account number" required>
                </div>

                <div class="input-group">
                    <label>Account Holder Name</label>
                    <input type="text" name="name" placeholder="Enter account holder name" required>
                </div>

                <div class="input-group">
                    <label>Account Password</label>
                    <input type="password" name="password" placeholder="Enter secure password" required>
                </div>

				<div class="input-group">
				    
				    <label>Withdrawal Amount (&#8377;)</label>
				    
				    <!-- MODIFIED: Type changed to number to instantly prevent alphabet inputs -->
				    <input type="number" name="amount" min="1" placeholder="Enter amount to debit" required>
				</div>


                <div class="button-group">
                    <button type="submit" class="btn-submit">Confirm Withdrawal</button>
                    <button type="reset" class="btn-clear">Clear</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
