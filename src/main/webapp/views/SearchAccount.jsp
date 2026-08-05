<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search Account</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/SearchAccount.css">
</head>
<body>

<div class="search-container">
    <h2>Search Customer Account</h2>
    
    <!-- Search Form -->
    <form action="${pageContext.request.contextPath}/findAccount" method="GET" class="search-box">
        <input type="text" name="search_acc_number" placeholder="Enter 14-digit Account Number" required maxlength="14" pattern="\d{14}">
        <button type="submit" class="btn-search">Search</button>
    </form>

    <!-- Error Messages (Using plain Java expressions) -->
    <%= (request.getAttribute("searchError") != null) ? "<div class='error'>" + request.getAttribute("searchError") + "</div>" : "" %>

    <!-- Results Display Panel (Using plain Java expressions) -->
    <% if (request.getAttribute("accountDetails") != null) { 
        com.web.bank.Bank bank = (com.web.bank.Bank) request.getAttribute("accountDetails");
    %>
        <div class="result-card">
            <h3>Account Details Found:</h3>
            <p><strong>Account Holder Name:</strong> <%= bank.getName() %></p>
            <p><strong>Account Number:</strong> <%= bank.getAcc_number() %></p>
			
			<div class="info-group">
			    <span class="label">Current Balance:</span>
			    
			    <span class="value">&#8377;<%= bank.getAmount() %></span>
			</div>

            <p><strong>Mobile Number:</strong> <%= bank.getMobile() %></p>
            <p><strong>Residential Address:</strong> <%= bank.getAddress() %></p>
        </div>
    <% } %>
</div>

</body>
</html>
