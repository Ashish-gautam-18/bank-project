<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About SDFC Bank - Rules & Compliance</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        body {
            background-color: #f4f6f9;
            color: #333;
            line-height: 1.6;
        }
        header {
            background-color: #0f2c59;
            color: #fff;
            padding: 20px 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .logo-container {
            display: flex;
            align-items: center;
            gap: 15px;
        }
        .bank-logo {
            width: 50px;
            height: 50px;
            background-color: #dac0a3;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            color: #0f2c59;
            font-size: 1.2rem;
        }
        .logo-text h1 {
            font-size: 1.5rem;
        }
        .logo-text p {
            font-size: 0.8rem;
            color: #dac0a3;
        }
        nav ul {
            display: flex;
            list-style: none;
            gap: 20px;
        }
        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-weight: 600;
            padding: 8px 16px;
            border-radius: 4px;
        }
        nav ul li a:hover, nav ul li a.active {
            background-color: #dac0a3;
            color: #0f2c59;
        }
        .container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 0 20px;
        }
        .page-title {
            text-align: center;
            color: #0f2c59;
            margin-bottom: 40px;
        }
        .page-title h2 {
            font-size: 2.3rem;
            margin-bottom: 10px;
        }
        /* Rules Accordion-style layout */
        .rules-container {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }
        .rule-box {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.05);
            border-left: 6px solid #0f2c59;
        }
        .rule-box.highlight {
            border-left-color: #e07a5f;
        }
        .rule-box h3 {
            color: #0f2c59;
            margin-bottom: 12px;
            font-size: 1.4rem;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .rule-box ul {
            margin-left: 20px;
            margin-top: 10px;
        }
        .rule-box ul li {
            margin-bottom: 8px;
        }
        /* Banner block */
        .info-banner {
            background-color: #dac0a3;
            color: #0f2c59;
            padding: 25px;
            border-radius: 8px;
            margin-top: 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .info-banner h4 {
            font-size: 1.3rem;
        }
        footer {
            background-color: #0f2c59;
            color: #fff;
            text-align: center;
            padding: 20px;
            margin-top: 60px;
        }
    </style>
</head>
<body>

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
				        <li><a href="${pageContext.request.contextPath}/views/about-story.jsp">Our Story</a></li>
				        <li><a href="${pageContext.request.contextPath}/views/about-governance.jsp">Governance</a></li>
				        <li><a href="${pageContext.request.contextPath}/views/about-rules.jsp">Rules & Compliance</a></li>
				    </ul>
				</nav>
    </header>

    <div class="container">
        <div class="page-title">
            <h2>Rules & Regulatory Compliance</h2>
            <p>Our strict operating mandates guarantee system security and protect depositor wealth.</p>
        </div>

        <div class="rules-container">
            <div class="rule-box">
                <h3>1. Know Your Customer (KYC) Mandates</h3>
                <p>In accordance with central banking provisions, all active client profiles must undergo biometric verification or secure document screening via our secure app channel.</p>
                <ul>
                    <li>Primary government identity cards must be updated every 2 years.</li>
                    <li>Corporate entities must provide validated articles of incorporation.</li>
                </ul>
            </div>

            <div class="rule-box highlight">
                <h3>2. Anti-Money Laundering (AML) Protocols</h3>
                <p>SDFC Bank deploys real-time machine learning monitoring filters to automatically tag, hold, and review flagged structural financial anomalies.</p>
                <ul>
                    <li>All individual cash operations exceeding $10,000 generate systematic tax file records automatically.</li>
                    <li>Cross-border clearings undergo deep routing scrutiny before final settlements.</li>
                </ul>
            </div>

            <div class="rule-box">
                <h3>3. Digital Security & Privacy Rules</h3>
                <p>Customer accounts fall under strict encrypted firewall policies. Employees are systematically prohibited from querying clean-text consumer passkeys.</p>
                <ul>
                    <li>Multi-Factor Authentication (MFA) is mandatory across all active mobile logging profiles.</li>
                    <li>We never contact customers asking for One-Time Passwords (OTPs) via text or outbound phone centers.</li>
                </ul>
            </div>
        </div>

        <div class="info-banner">
            <div>
                <h4>Need to report fraudulent account activity?</h4>
                <p>Our rapid action security network isolates system leaks immediately.</p>
            </div>
            <strong style="font-size: 1.2rem;">Call: 1800-SDFC-SAFE</strong>
        </div>
    </div>

    <footer>
        <p>&copy; 2026 SDFC Bank Ltd. All Rights Reserved. Conceptualized for Project Delivery.</p>
    </footer>

</body>
</html>
