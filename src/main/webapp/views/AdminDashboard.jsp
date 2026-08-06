<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Essential responsive viewport configuration tag -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank | Admin Operations Dashboard</title>
    
    <!-- Link external base presentation stylesheet asset -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Home.css">
    
    <!-- Central administrative style layer containing responsive grid logic adjustments -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/AdminDashboard.css">
</head>
<body>

    <!-- Mobile Top Navigation Strip containing hamburger switch trigger -->
    <div class="admin-mobile-nav">
        <span style="font-weight: 800; letter-spacing: 1px;">SDFC ADMIN</span>
        <button class="admin-hamburger" onclick="toggleAdminSidebar()">☰</button>
    </div>

    <!-- Admin Control Panel Navigation Sidebar -->
    <aside class="sidebar" id="adminSidebar">
        <div class="sidebar-brand">SDFC BANK</div>
        <ul class="sidebar-menu">
            <li><a href="/" class="active">📊 Overview Monitor</a></li>
            <li><a href="#" onclick="togglePanel('deposit-panel'); closeAdminSidebar();">💰 Quick Deposit</a></li>
            <li><a href="#" onclick="togglePanel('transfer-panel'); closeAdminSidebar();">🔄 Transfer Funds</a></li>
            
            <li>
                <a href="/client-home" class="exit-link">
                    <span class="home-icon">🏠</span> Client Home Portal
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/admin/logout" class="exit-link">
                    <span class="home-icon">🚪</span> Logout
                </a>
            </li>
        </ul>
    </aside>

    <!-- Main Active Workspace Content Grid -->
    <main class="main-workspace">
        <header class="workspace-header">
            <h2>Operations Management Dashboard</h2>
            <div class="connection-pill">Live Connection Database</div>
        </header>

        <!-- Interactive Bank Status Summary Metrics Cards -->
        <section class="metrics-grid">
            <div class="metric-card">
                <h3>Total Monitored Accounts</h3>
                <p class="metric-value">${totalAccounts}</p>
            </div>
            <div class="metric-card accent-card">
                <h3>Total Vault Holdings Balance</h3>
                <p class="metric-value">₹${totalVault}</p>
            </div>
        </section>

        <!-- DYNAMIC ADMINISTRATIVE INPUT OPERATION PANELS -->
        <section id="deposit-panel" class="toggle-panel hidden-element">
            <h3>Post Secure Cash Deposit Ledger</h3>
            <form action="${pageContext.request.contextPath}/admin/depo" method="POST" class="banking-form">
                <input type="text" name="accNum" placeholder="Enter Target Account Number" required pattern="\d+">
                <input type="number" name="amount" placeholder="Deposit Amount (INR)" step="0.01" required min="1">
                <button type="submit" class="submit-action-btn">Commit Cash Entry</button>
            </form>
        </section>

        <section id="transfer-panel" class="toggle-panel hidden-element">
            <h3>Execute Atomic Ledger Fund Transfer</h3>
            <form action="${pageContext.request.contextPath}/admin/transfer" method="POST" class="banking-form">
                <input type="text" name="fromAcc" placeholder="Source Account (Sender)" required pattern="\d+">
                <input type="text" name="toAcc" placeholder="Destination Account (Receiver)" required pattern="\d+">
                <input type="number" name="amount" placeholder="Transfer Amount (INR)" step="0.01" required min="1">
                <button type="submit" class="submit-action-btn">Process Balance Migration</button>
            </form>
        </section>

        <!-- Live Database Records Monitoring Registry -->
        <section class="table-section">
            <div class="table-header-row">
                <h3>Active Customer Database Accounts</h3>
                <form action="${pageContext.request.contextPath}/" method="GET" class="search-form">
                    <input type="text" name="search" placeholder="Filter by Account Number..." value="${searchQuery}">
                    <button type="submit">Filter Registry</button>
                </form>
            </div>

            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Account Number</th>
                            <th>Customer Name</th>
                            <th>Contact Mobile</th>
                            <th>Registered Address</th>
                            <th>Available Balance</th>
                            <th>Actions</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            java.util.List<com.web.bank.Bank> accounts = (java.util.List<com.web.bank.Bank>) request.getAttribute("accounts");
                            if (accounts == null || accounts.isEmpty()) { 
                        %>
                            <tr>
                                <td colspan="6" style="text-align: center; color: #888; padding: 30px;">
                                    No active database bank records match your filter criteria.
                                </td>
                            </tr>
                        <% 
                            } else { 
                                for(com.web.bank.Bank acc : accounts) {
                        %>
                            <tr>
                                <td><code><%= acc.getAcc_number() %></code></td>
                                <td class="bold-text"><%= acc.getName() %></td>
                                <td><%= acc.getMobile() %></td>
                                <td><%= acc.getAddress() %></td>
                                <td class="currency-text">₹<%= acc.getAmount() %></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/deleteAccount?acc_number=<%= acc.getAcc_number() %>" 
                                       onclick="return confirm('Confirm : Are you sure to do this.?');" 
                                       style="color: #ff4d4d; font-weight: bold; text-decoration: none; border: 1px solid #ff4d4d; padding: 4px 8px; border-radius: 4px; background: rgba(255,77,77,0.1);">
                                       Delete
                                    </a>
                                </td>
                            </tr>
                        <% 
                                } 
                            } 
                        %>
                    </tbody>
                </table>
            </div>
        </section>
    </main>

    <!-- Embedded micro script tracking mechanisms for managing structural sidebar sliding motions -->
    <script>
        function toggleAdminSidebar() {
            var sidebar = document.getElementById('adminSidebar');
            if (sidebar) {
                sidebar.classList.toggle('open');
            }
        }
        function closeAdminSidebar() {
            var sidebar = document.getElementById('adminSidebar');
            if (sidebar) {
                sidebar.classList.remove('open');
            }
        }
    </script>

    <!-- Project core interactive processing module script file reference -->
    <script src="${pageContext.request.contextPath}/js/AdminDashboard.js"></script>
</body>
</html>
