<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Transaction Status</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/TransferSuccess.css">
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
