<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Balance Details</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/BalanceResult.css">
</head>
<body>
    <div class="background-overlay"></div>
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
    </nav>
    <div class="content-wrapper">
        <div class="statement-card">
            <h2>Account Details</h2>
            <p class="subtitle">Live Balance Inquiry</p>
            <div class="divider"></div>
            <div class="data-grid">
                <div class="data-row">
                    <span class="data-label">Account Holder</span>
                    <span class="data-value">${bank.name}</span>
                </div>
                <div class="data-row">
                    <span class="data-label">Account Number</span>
                    <span class="data-value">${bank.acc_number}</span>
                </div>
                <div class="data-row balance-row">
                    <span class="data-label">Current Balance</span>
                    <span class="data-value">₹ ${bank.amount}</span>
                </div>
                <div class="data-row">
                    <span class="data-label">Mobile Number</span>
                    <span class="data-value">${bank.mobile}</span>
                </div>
            </div>
            <a href="${pageContext.request.contextPath}/" class="btn-back">Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
