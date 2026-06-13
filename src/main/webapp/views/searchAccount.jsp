<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search Account</title>
    <style>
        .search-container { max-width: 500px; margin: 50px auto; font-family: Arial, sans-serif; }
        .search-box { display: flex; gap: 10px; margin-bottom: 20px; }
        .search-box input { flex: 1; padding: 10px; border: 1px solid #ccc; border-radius: 4px; }
        .btn-search { padding: 10px 20px; background-color: #007bff; color: white; border: none; border-radius: 4px; cursor: pointer; }
        .error { color: red; background-color: #f8d7da; padding: 10px; border-radius: 4px; margin-bottom: 15px; }
        .result-card { border: 1px solid #ddd; padding: 20px; border-radius: 5px; background-color: #f9f9f9; }
    </style>
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
