<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Essential responsive viewport configuration tag -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About SDFC Bank - Corporate Governance</title>
    
    <!-- Link external base presentation stylesheet asset -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Home.css">
    
    <!-- Original page-specific presentation stylesheet containing mobile overrides -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/AboutGovernance.css">
</head>
<body>

    <!-- Header layout with completely untouched original logo and sub-navigation links -->
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
                <li><a href="${pageContext.request.contextPath}/views/AboutGovernance.jsp" class="active">Governance</a></li>
                <li><a href="${pageContext.request.contextPath}/views/AboutRules.jsp">Rules & Compliance</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main dynamic data layout container segment -->
    <div class="container">
        <div class="page-title">
            <h2>Corporate Governance</h2>
            <p>Our structures guarantee fair markets, institutional responsibility, and clean reporting.</p>
        </div>

        <!-- Corporate structure metadata profiles matrix section -->
        <div class="board-section">
            <h3>Executive Leadership Team</h3>
            <div class="team-grid">
                <div class="member-card">
                    <img src="${pageContext.request.contextPath}/images/CEO.png" alt="CEO">
                    <h4>Ashish Gautam</h4>
                    <p>Managing Director & CEO</p>
                </div>
                <div class="member-card">
                    <img src="${pageContext.request.contextPath}/images/CFO.png" alt="CFO">
                    <h4>Anish Tande</h4>
                    <p>Chief Financial Officer</p>
                </div>
                <div class="member-card">
                    <img src="${pageContext.request.contextPath}/images/CTO.png" alt="CTO">
                    <h4>Jyoti Rao </h4>
                    <p>Chief Technology Officer</p>
                </div>
                <div class="member-card">
                    <img src="${pageContext.request.contextPath}/images/HEAD.png" alt="Compliance Head">
                    <h4>Priyanshu Rao Reddy</h4>
                    <p>Head of Risk & Compliance</p>
                </div>
            </div> 
        </div>

        <!-- Corporate resolution content display segment -->
        <div class="statement-block">
            <img src="${pageContext.request.contextPath}/images/meeting-room.jpg" alt="Meeting Room">
            <div>
                <h3>Our Governance Pledge</h3>
                <p>The SDFC Board of Directors consistently reviews security matrices, corporate risk exposure, and audit processes to assure regulatory alignment with Apex Central Bank standards. Our framework protects minority stakeholders and optimizes asset management allocation protocols transparently.</p>
            </div>
        </div>
    </div>

    <!-- Administrative tracking footer marker node -->
    <footer>
        <p>&copy; 2026 SDFC Bank Ltd. All Rights Reserved. Conceptualized for Project Delivery.</p>
    </footer>

    <!-- Main dynamic JavaScript module reference -->
    <script src="${pageContext.request.contextPath}/js/Home.js"></script>
</body>
</html>
