<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Secure Money Transfer</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/TransferForm.css">
</head>
<body>
    <div class="background-overlay"></div>
    
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
        <div class="menu">
			<a href="${pageContext.request.contextPath}/" class="active">HOME</a>
			<a href="${pageContext.request.contextPath}/account">NEW ACCOUNT</a>
			<a href="${pageContext.request.contextPath}/balance">BALANCE</a>
			<a href="${pageContext.request.contextPath}/depo">DEPOSIT</a>
			<a href="${pageContext.request.contextPath}/withdrow">WITHDRAW</a>
			<a href="${pageContext.request.contextPath}/Money">TRANSFER</a>
			<a href="${pageContext.request.contextPath}/close">CLOSE A/C</a>
			<a href="${pageContext.request.contextPath}/views/AboutRules.jsp">ABOUT</a>
        </div>
    </nav>

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
                        <input type="text" name="targetAcc" placeholder="Enter beneficiary account number" required>
                    </div>

                    <div class="input-group">
                        <label>Transfer Amount (₹)</label>
                        <input type="number" name="transferAmount" step="0.01" placeholder="Enter amount to send" required>
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
