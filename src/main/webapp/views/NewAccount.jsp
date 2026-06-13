<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Open New Account</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Fixed Background Image Overlay */
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

        /* Fixed Viewport Configuration to block scrolling */
        html, body {
            height: 100%;
            overflow: hidden; /* Disables page scrolling */
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

        .menu a:hover, .menu a.active {
            color: #00d2ff;
        }

        /* Form Wrapper Layout */
        .form-wrapper {
            height: 90vh; /* Fills remaining screen perfectly */
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
        }

        /* Transparent Glassmorphism Container */
        .form-container {
            background: rgba(255, 255, 255, 0.12); /* Semi-transparent white */
            backdrop-filter: blur(10px); /* Blurs the background image underneath */
            -webkit-backdrop-filter: blur(10px);
            padding: 25px 35px;
            border-radius: 12px;
            width: 100%;
            max-width: 650px; /* Widened to fit columns */
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .form-container h2 {
            color: #00d2ff; /* Changed to bright blue for visibility against dark backgrounds */
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }

        /* Two-Column Grid Setup */
        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr; /* Splits fields into 2 equal columns */
            gap: 12px 20px; /* Tighter spacing to avoid overflows */
        }

        /* Spans the address text area across both columns */
        .full-width {
            grid-column: span 2;
        }

        .input-group {
            text-align: left;
        }

        .input-group label {
            display: block;
            font-size: 13px;
            font-weight: 600;
            color: #ffffff; /* Crisp white labels */
            margin-bottom: 5px;
        }

        .input-group input, .input-group textarea {
            width: 100%;
            padding: 8px 12px;
            background: rgba(255, 255, 255, 0.9); /* Easy to read text inputs */
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            outline: none;
            transition: 0.3s;
        }

        .input-group input:focus, .input-group textarea:focus {
            border-color: #00d2ff;
            box-shadow: 0 0 5px rgba(0, 210, 255, 0.5);
        }

        .input-group textarea {
            resize: none;
            height: 45px; /* Shorter textarea height */
        }

        /* Action Buttons Row */
        .button-group {
            display: flex;
            gap: 15px;
            margin-top: 20px;
        }

        .btn-submit {
            flex: 2;
            padding: 10px;
            background: #00d2ff;
            color: #002850;
            border: none;
            border-radius: 5px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-submit:hover {
            background: #ffffff;
            color: #002850;
        }

        .btn-clear {
            flex: 1;
            padding: 10px;
            background: rgba(231, 76, 60, 0.8);
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-clear:hover {
            background: #e74c3c;
        }
    </style>
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Navbar -->
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

    <!-- Centered Form Wrapper Layout -->
    <div class="form-wrapper">
        <div class="form-container">
            <h2>Open New Account</h2>
            
            <form action="${pageContext.request.contextPath}/register" method="POST">
                <div class="form-grid">
                    <div class="input-group">
                        <label>Account Number</label>
						<input type="text" name="acc_number" placeholder="Enter 14-digit account number"
						 minlength="14" maxlength="14" pattern="\d{14}"
						 title="Account number must be exactly 14 numeric digits" required>
						
                    </div>
					
                    <div class="input-group">
						<label>Name</label>
						<input type="text" name="name" placeholder="Enter full name (Letters only)" 
						          pattern="^[A-Za-z ]+$" 
						          title="Full Name must contain letters and spaces only." required>
                    </div>

					
					<div class="input-group">
					    <label>Password</label>
					    <!-- MODIFIED LINE BELOW: Enforces 1 capital, 1 number, 1 symbol, min 8 chars -->
					    <input type="password" id="password" name="password" placeholder="Min 8 chars, 1 Cap, 1 Num, 1 Symbol" 
					           pattern="^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" 
					           title="Password must be at least 8 characters long, contain at least one uppercase letter, one number, and one special character (@$!%*?&)." required>
					</div>

					<div class="input-group">
					    <label>Confirm Password</label>
					    <!-- MODIFIED LINE BELOW -->
					    <input type="password" id="conf_password" name="conf_password" placeholder="Repeat password" required>
					</div>

					<div class="input-group">
					    <label>Initial Deposit Amount</label>
					    <!-- MODIFIED: Placeholder and values configured cleanly -->
					    <input type="number" name="amount" placeholder="Minimum ₹1000" min="1000" title="Initial deposit must be a number and at least ₹1000" required>
					</div>


                    <div class="input-group">
                        <label>Mobile Number</label>
						<input type="text" name="mobile" placeholder="Enter 10-digit mobile number"
												 minlength="10" maxlength="10" pattern="\d{10}"
												 title="Mobile number must be 10 digits" required>
                    </div>

                    <div class="input-group full-width">
                        <label>Residential Address</label>
                        <textarea name="address" placeholder="Enter complete address" required></textarea>
                    </div>
                </div>

                <div class="button-group">
                    <button type="submit" class="btn-submit">Submit Application</button>
                    <button type="reset" class="btn-clear">Clear</button>
                </div>
            </form>
        </div>
    </div>
	
	<script>
	const form = document.querySelector('form');
	const password = document.getElementById('password');
	const confPassword = document.getElementById('conf_password');

	form.addEventListener('submit', function(event) {
	    if (password.value !== confPassword.value) {
	        alert("Error: Password and Confirm Password do not match!");
	        confPassword.focus();
	        event.preventDefault(); // Stops the form from submitting
	    }
	});
	</script>

</body>
</html>
