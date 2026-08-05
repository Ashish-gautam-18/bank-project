<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Account Creation</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/NewAccountSuccess.css">
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Navbar Structure -->
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
      
    </nav>

    <!-- Success Interface Display Layout -->
    <div class="success-wrapper">
        <div class="success-card">
            
            <!-- Animated Checkmark Module -->
            <div class="checkmark-wrapper">
                <div class="circle"></div>
                <div class="animated-circle"></div>
                <div class="checkmark">✓</div>
            </div>

            <h1 class="success-title">Account Created Successfully!</h1>
            <p class="success-message">
                Welcome to SDFC Bank. Great!! , Your dynamic internet banking portfolio has been generated. You can now manage deposits and live card routing panels immediately.
            </p>
            
			<a href="${pageContext.request.contextPath}/views/Home.jsp" class="action-link">Back to Home</a>

        </div>
    </div>
</body>
</html>
