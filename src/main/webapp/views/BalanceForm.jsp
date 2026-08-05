<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Check Balance</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/BalanceForm.css">
</head>
<body>
    <div class="background-overlay"></div>
    <nav class="navbar">
        <div class="logo">SDFC Bank</div>
        <div class="menu">
            <a href="${pageContext.request.contextPath}/">HOME</a>
            <a href="/account">NEW ACCOUNT</a>
            <a href="/balance" class="active">BALANCE</a>
            <a href="/depo">DEPOSIT</a>
            <a href="/withdrow">WITHDRAW</a>
            <a href="/Money">TRANSFER</a>
            <a href="/close">CLOSE A/C</a>
            <a href="${pageContext.request.contextPath}/views/AboutRules.jsp">ABOUT</a>
        </div>
    </nav>
    <div class="form-wrapper">
        <div class="form-container">
            <h2>Check Account Balance</h2>
            <p>Please provide your credentials securely to fetch your live balance</p>
            <form action="${pageContext.request.contextPath}/cheakbal" method="POST">
                <div class="input-group">
                    <label>Account Number</label>
                    <input type="text" name="acc_number" placeholder="Enter your account number" required>
                </div>
                <div class="input-group">
                    <label>Account Holder Name</label>
                    <input type="text" name="name" placeholder="Enter your full name" required>
                </div>
                <div class="input-group">
                    <label>Secure Password</label>
                    <input type="password" name="password" placeholder="Enter your password" required>
                </div>
                <div class="button-group">
                    <button type="submit" class="btn-submit">Fetch Balance</button>
                    <button type="reset" class="btn-clear">Clear</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
