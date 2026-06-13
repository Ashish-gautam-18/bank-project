<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About SDFC Bank - Our Story</title>
    <style>
        /* Global Reset & Typography */
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
        /* Header & Navigation */
        header {
            background-color: #0f2c59;
            color: #fff;
            padding: 20px 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
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
            letter-spacing: 1px;
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
            transition: all 0.3s ease;
        }
        nav ul li a:hover, nav ul li a.active {
            background-color: #dac0a3;
            color: #0f2c59;
        }
        /* Main Layout */
        .container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 0 20px;
        }
        .hero-section {
            background: linear-gradient(rgba(15, 44, 89, 0.85), rgba(15, 44, 89, 0.85)), url('https://unsplash.com') no-repeat center center/cover;
            color: white;
            padding: 80px 40px;
            border-radius: 8px;
            text-align: center;
            margin-bottom: 40px;
        }
        .hero-section h2 {
            font-size: 2.5rem;
            margin-bottom: 15px;
        }
        /* Content Grid */
        .grid {
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 40px;
            align-items: center;
        }
        .story-text h3 {
            color: #0f2c59;
            font-size: 1.8rem;
            margin-bottom: 15px;
            border-left: 5px solid #dac0a3;
            padding-left: 10px;
        }
        .story-text p {
            margin-bottom: 20px;
            text-align: justify;
        }
        .side-image img {
            width: 100%;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
        }
        /* Values Section */
        .values-section {
            margin-top: 50px;
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.05);
        }
        .values-section h3 {
            color: #0f2c59;
            text-align: center;
            font-size: 2rem;
            margin-bottom: 30px;
        }
        .values-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }
        .value-card {
            background-color: #f8fafc;
            padding: 25px;
            border-radius: 6px;
            border-top: 4px solid #0f2c59;
            text-align: center;
        }
        .value-card h4 {
            color: #0f2c59;
            margin-bottom: 10px;
            font-size: 1.2rem;
        }
        /* Footer */
        footer {
            background-color: #0f2c59;
            color: #fff;
            text-align: center;
            padding: 20px;
            margin-top: 60px;
            font-size: 0.9rem;
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
        <div class="hero-section">
            <h2>Shaping the Future of Banking</h2>
            <p>Empowering millions with trusted, secure, and smart financial solutions since 2010.</p>
        </div>

        <div class="grid">
            <div class="story-text">
                <h3>Who We Are</h3>
                <p>SDFC Bank stands as a beacon of modern financial infrastructure. Founded on the principle of bridging traditional stability with cutting-edge fintech architectures, we have rapidly evolved into a top-tier retail and commercial banking partner.</p>
                <p>Over the last decade, we have pioneered zero-contact digital account ecosystems, secure block-level ledgers, and institutional asset management portfolios. Our commitment goes beyond metrics; we focus heavily on driving sustainable financial inclusion across both urban centers and rural landscapes.</p>
            </div>
            <div class="side-image">
                <img src="sdfc-office.png" alt="SDFC Bank Corporate Office">
            </div>
        </div>

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

    <footer>
        <p>&copy; 2026 SDFC Bank Ltd. All Rights Reserved. Conceptualized for Project Delivery.</p>
    </footer>

</body>
</html>
