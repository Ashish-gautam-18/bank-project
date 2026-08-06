<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Essential responsive viewport configuration tag -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About SDFC Bank - Our Story</title>
    
    <!-- Link external base presentation stylesheet asset -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Home.css">
    
    <!-- Original stylesheet containing responsive overrides at the bottom -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/AboutStory.css">
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
                <li><a href="${pageContext.request.contextPath}/views/AboutStory.jsp" class="active">Our Story</a></li>
                <li><a href="${pageContext.request.contextPath}/views/AboutGovernance.jsp">Governance</a></li>
                <li><a href="${pageContext.request.contextPath}/views/AboutRules.jsp">Rules & Compliance</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main dynamic data layout container segment -->
    <div class="container">
        <div class="hero-section">
            <h2>Shaping the Future of Banking</h2>
            <p>Empowering millions with trusted, secure, and smart financial solutions since 2010.</p>
        </div>

        <!-- Corporate story multi-column content segment -->
        <div class="grid">
            <div class="story-text">
                <h3>Who We Are</h3>
                <p>SDFC Bank stands as a beacon of modern financial infrastructure. Founded on the principle of bridging traditional stability with cutting-edge fintech architectures, we have rapidly evolved into a top-tier retail and commercial banking partner.</p>
                <p>Over the last decade, we have pioneered zero-contact digital account ecosystems, secure block-level ledgers, and institutional asset management portfolios. Our commitment goes beyond metrics; we focus heavily on driving sustainable financial inclusion across both urban centers and rural landscapes.</p>
            </div>
            <div class="side-image">
                <img src="${pageContext.request.contextPath}/images/sdfc-office.png" alt="SDFC Bank Corporate Office">
            </div>
        </div>

        <!-- Core corporate pillars data block matrix -->
        <div class="values-section">
            <h3>Our Core Pillars</h3>
            <div class="values-grid">
                <div class="value-card">
                    <h4>Absolute Integrity</h4>
                    <p>Operating transparently with bulletproof asset protection policies to validate our customers' unwavering trust.</p>
                </div>
                <div class="value-card">
                    <h4>Customer First</h4>
                    <p>Engineered platforms optimized for user accessibility, zero hidden charges, and round-the-clock emergency support.</p>
                </div>
                <div class="value-card">
                    <h4>Forward Innovation</h4>
                    <p>Constantly upgrading system mainframes to process immediate global microtransactions seamlessly.</p>
                </div>
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
