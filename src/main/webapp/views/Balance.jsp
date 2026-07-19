<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Check Balance</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        .background-overlay { position: fixed; top: 0; left: 0; width: 100%; height: 100%; background-image: linear-gradient(rgba(15, 5, 30, 0.8), rgba(15, 5, 30, 0.8)), url('${pageContext.request.contextPath}/views/logo.png'); background-size: cover; background-position: center; background-repeat: no-repeat; z-index: -1; }
        html, body { height: 100%; overflow: hidden; }
        .navbar { display: flex; justify-content: space-between; align-items: center; padding: 15px 50px; background: rgba(15, 5, 30, 0.95); border-bottom: 2px solid #8e44ad; height: 10vh; }
        .logo { color: #ffffff; font-size: 24px; font-weight: bold; letter-spacing: 1px; }
        .menu a { color: #bdc3c7; text-decoration: none; margin: 0 15px; font-size: 14px; font-weight: 600; transition: 0.3s; }
        .menu a:hover, .menu a.active { color: #bb86fc; }
        .form-wrapper { height: 90vh; display: flex; justify-content: center; align-items: center; padding: 20px; }
        .form-container { background: rgba(255, 255, 255, 0.07); backdrop-filter: blur(12px); -webkit-backdrop-filter: blur(12px); padding: 40px; border-radius: 16px; width: 100%; max-width: 450px; box-shadow: 0 8px 32px rgba(142, 68, 173, 0.25); border: 1px solid rgba(255, 255, 255, 0.15); text-align: center; animation: cardPopIn 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275) forwards; }
        .form-container h2 { color: #bb86fc; margin-bottom: 8px; font-size: 26px; }
        .form-container p { color: #b3b3b3; font-size: 13px; margin-bottom: 20px; }
        .input-group { margin-bottom: 22px; text-align: left; }
        .input-group label { display: block; font-size: 13px; font-weight: 600; color: #ffffff; margin-bottom: 6px; letter-spacing: 0.5px; }
        .input-group input { width: 100%; padding: 12px; background: rgba(255, 255, 255, 0.95); border: 2px solid transparent; border-radius: 6px; font-size: 14px; outline: none; transition: 0.3s; color: #1a1a1a; }
        .input-group input:focus { border-color: #bb86fc; box-shadow: 0 0 8px rgba(187, 134, 252, 0.5); }
        .button-group { display: flex; gap: 15px; margin-top: 10px; }
        .btn-submit { flex: 2; padding: 12px; background: #8e44ad; color: white; border: none; border-radius: 6px; font-size: 15px; font-weight: bold; cursor: pointer; transition: 0.3s; box-shadow: 0 4px 15px rgba(142, 68, 173, 0.4); }
        .btn-submit:hover { background: #bb86fc; color: #15051e; transform: translateY(-2px); }
        .btn-clear { flex: 1; padding: 12px; background: transparent; color: #ffffff; border: 2px solid rgba(255, 255, 255, 0.3); border-radius: 6px; font-size: 15px; font-weight: bold; cursor: pointer; transition: 0.3s; }
        .btn-clear:hover { background: rgba(255, 255, 255, 0.1); border-color: #ffffff; }
        @keyframes cardPopIn { from { opacity: 0; transform: scale(0.8) translateY(30px); } to { opacity: 1; transform: scale(1) translateY(0); } }
    </style>
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
            <a href="${pageContext.request.contextPath}/views/about-rules.jsp">ABOUT</a>
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
