<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Account Closed</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/CloseAccountSuccess.css">
</head>
<body>
    <div class="background-overlay"></div>
    
    <!-- Navbar Structure -->
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
       
    </nav>

    <!-- Success Display Layout -->
    <div class="success-wrapper">
        <div class="success-card">
            
            <!-- Secure Warning Status Lock Symbol -->
            <div class="icon-container">✕</div>

            <h1 class="success-title">Account Closed!</h1>
            <p class="success-message">
                Your request has been executed completely, User. SDFC Bank records have successfully processed and archived the transaction ledger. Your active account profile is now safely closed.
            </p>
            
        
			<a href="${pageContext.request.contextPath}/views/Home.jsp" class="action-link">Back to Home</a>
        </div>
    </div>
</body>
</html>
