<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Essential responsive viewport configuration tag -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About SDFC Bank - Rules & Compliance</title>
    
    <!-- Link external base presentation stylesheet asset -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Home.css">
    
    <!-- Original stylesheet containing responsive overrides at the bottom -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/AboutRules.css">
</head>
<body>

    <!-- Header containing system sub-navigation menus -->
    <header>
        <div class="logo-container">
            <div class="bank-logo">SDFC</div>
            <div class="logo-text">
                <h1>SDFC BANK</h1>
                <p>Secure. Digital. Future. Clean.</p>
            </div>
        </div>
        <nav>
            <ul>
                <li><a href="/client-home">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/views/AboutStory.jsp">Our Story</a></li>
                <li><a href="${pageContext.request.contextPath}/views/AboutGovernance.jsp">Governance</a></li>
                <li><a href="${pageContext.request.contextPath}/views/AboutRules.jsp" class="active">Rules & Compliance</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main dynamic data layout container segment -->
    <div class="container">
        <div class="page-title">
            <h2>Rules & Regulatory Compliance</h2>
            <p>Strict operating mandates guarantee transaction safety and protect depositor wealth.</p>
        </div>

        <!-- Compliance guidelines display wrapper -->
        <div class="rules-container">
            <div class="rule-box highlight">
                <h3><span>📋</span> Know Your Customer (KYC) Mandates</h3>
                <p>In accordance with central banking provisions, all active client profiles require verified core identification documents prior to transactional routing clearance.</p>
            </div>

            <div class="rule-box">
                <h3><span>🔒</span> Anti-Money Laundering Framework</h3>
                <p>Automated rolling ledger audit checks evaluate ledger balances to prevent suspicious capital movements or transactional inconsistency profiles.</p>
            </div>
        </div>

        <!-- Informational banner accent panel -->
        <div class="info-banner">
            <div>
                <h4>Have compliance inquiries?</h4>
                <p>Our dedicated regulatory desk checks ledger compliance records 24/7.</p>
            </div>
        </div>
    </div>

    <!-- Administrative tracking footer node -->
    <footer>
        <p>&copy; 2026 SDFC Bank Ltd. All Rights Reserved. Conceptualized for Project Delivery.</p>
    </footer>

    <!-- Main dynamic JavaScript module reference -->
    <script src="${pageContext.request.contextPath}/js/Home.js"></script>
</body>
</html>
