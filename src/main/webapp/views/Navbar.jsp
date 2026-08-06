<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar">
    <!-- Left Side: Logo Area -->
    <div class="logo-area">
        <span class="logo-text">SDFC <span class="logo-highlight">BANK</span></span>
    </div>

    <!-- Right Side: Search Block -->
    <div class="Search">
        <form action="${pageContext.request.contextPath}/findAccount" method="GET">
            <input class="srch" type="search" name="search_acc_number" placeholder="Enter Account..." required pattern="\d+">
            <button type="submit" class="btn">Search</button>
        </form>
    </div>

    <!-- Hamburger Menu Button for Mobile (☰) -->
    <button class="menu-toggle" onclick="toggleMenu()">
        <span></span>
        <span></span>
        <span></span>
    </button>

    <!-- Middle: Menu Links -->
    <div class="menu" id="navMenu">
        <a href="/client-home">HOME</a>
        <a href="/account">NEW ACCOUNT</a>
        <a href="/balance">BALANCE</a>
        <a href="/depo">DEPOSIT</a>
        <a href="/withdrow">WITHDRAW</a>
        <a href="/Money">TRANSFER</a>
        <a href="/close">CLOSE A/C</a>
    </div>
</nav>
	