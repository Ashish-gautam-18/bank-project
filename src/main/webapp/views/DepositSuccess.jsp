<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Deposit Receipt</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/DepositSuccess.css">
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Connected App Navbar -->
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>

    </nav>

    <!-- Centered Content Grid Wrapper -->
    <div class="content-wrapper">
        <div class="receipt-card">
            
            <!-- Pulsing Success Ring Icon -->
            <div class="icon-container">✓</div>

            <h3 class="success-msg">Deposit Successful!</h3>
            <p class="summary-txt">E-Receipt Transaction Summary</p>
            <div class="line"></div>
            
            <!-- Row Matrix mapping your exact server EL attributes -->
            <div class="row">
                <span>Deposited Amount:</span>
                <span>₹ ${before}</span>
            </div>
            
            <div class="row">
                <span>Old Balance:</span>
                <span class="deposit-amt">+ ₹ ${deposit}</span>
            </div>
            
            <div class="line"></div>
            
            <!-- Grand Total Highlight Block -->
            <div class="row total-box">
                <span>New Updated Balance:</span>
                <span>₹ ${afterdeposit}</span>
            </div>
            
            <!-- Fixed Navigation Link Redirect pointing to Home.jsp inside views -->
           
			<a href="${pageContext.request.contextPath}/views/Home.jsp" class="btn-home">Back to Home</a>
        </div>
    </div>
</body>
</html>
