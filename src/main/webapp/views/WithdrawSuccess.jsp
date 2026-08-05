<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Withdrawal Receipt</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/WithdrawSuccess.css">
</head>
<body>
    <div class="background-overlay"></div>
    
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
    </nav>

    <div class="content-wrapper">
        <div class="receipt-card">
            
            <div class="icon-container">&#10003;</div>

            <h3 class="success-msg">Withdrawal Successful!</h3>
            <p class="summary-txt">E-Receipt Transaction Summary</p>
            <div class="line"></div>
            
            
            <div class="row">
                <span>Withdrawn Amount:</span>
                <span class="withdraw-amt">- &#8377; ${withdraw}</span>
            </div>
            
            <div class="row">
                <span>Before Balance:</span>
                <span>&#8377; ${before}</span>
            </div>
            
            <div class="line"></div>
            
            <div class="row total-box">
                <span>Remaining Balance:</span>
                <span>&#8377; ${afterwithdraw}</span>
            </div>
            
            <!-- FIXED: Redirecting through base landing route handler mapping -->
            <a href="${pageContext.request.contextPath}/" class="btn-home">Back to Home</a>
			  
        </div>
    </div>
</body>
</html>
