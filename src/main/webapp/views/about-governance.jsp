<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About SDFC Bank - Corporate Governance</title>
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
        /* Leadership Team Style */
        .board-section {
            margin-bottom: 50px;
        }
        .board-section h3 {
            color: #0f2c59;
            font-size: 1.6rem;
            margin-bottom: 25px;
            border-bottom: 2px solid #0f2c59;
            padding-bottom: 5px;
        }
        .team-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }
        .member-card {
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0,0,0,0.05);
            text-align: center;
            padding-bottom: 20px;
            transition: transform 0.3s ease;
        }
        .member-card:hover {
            transform: translateY(-5px);
        }
        .member-card img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            margin-bottom: 15px;
        }
        .member-card h4 {
            color: #0f2c59;
            font-size: 1.1rem;
            margin-bottom: 5px;
        }
        .member-card p {
            color: #666;
            font-size: 0.85rem;
            font-weight: 600;
        }
        /* Statement block */
        .statement-block {
            background-color: #0f2c59;
            color: white;
            padding: 40px;
            border-radius: 8px;
            display: grid;
            grid-template-columns: 1fr 2fr;
            gap: 30px;
            align-items: center;
        }
        .statement-block img {
            width: 100%;
            border-radius: 6px;
        }
        .statement-block h3 {
            color: #dac0a3;
            margin-bottom: 15px;
            font-size: 1.8rem;
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
            <h2>Corporate Governance</h2>
			
            <p>Our structures guarantee fair markets, institutional responsibility, and clean reporting.</p>
        </div>

        <div class="board-section">
            <h3>Executive Leadership Team</h3>
            <div class="team-grid">
                <div class="member-card">
                    <img src="CEO.png" alt="CEO">
                    <h4>Ashish Gautam</h4>
                    <p>Managing Director & CEO</p>
                </div>
                <div class="member-card">
                    <img src="CFO.png" alt="CFO">
                    <h4>Anish Tande</h4>
                    <p>Chief Financial Officer</p>
                </div>
                <div class="member-card">
                    <img src="CTO.png" alt="CTO">
                    <h4>Jyoti Rao </h4>
                    <p>Chief Technology Officer</p>
                </div>
                <div class="member-card">
                    <img src="HEAD.png" alt="Compliance Head">
                    <h4>Priyanshu Rao Reddy</h4>
                    <p>Head of Risk & Compliance</p>
                </div>
            </div>
        </div>

        <div class="statement-block">
            <img src="https://unsplash.com" alt="Meeting Room">
            <div>
                <h3>Our Governance Pledge</h3>
                <p>The SDFC Board of Directors consistently reviews security matrices, corporate risk exposure, and audit processes to assure regulatory alignment with Apex Central Bank standards. Our framework protects minority stakeholders and optimizes asset management allocation protocols transparently.</p>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2026 SDFC Bank Ltd. All Rights Reserved. Conceptualized for Project Delivery.</p>
    </footer>

</body>
</html>
