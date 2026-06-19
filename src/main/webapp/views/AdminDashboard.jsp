<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank Admin Console</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin-style.css">
</head>
<body>

    <!-- Admin Control Panel Navigation Sidebar -->
    <aside class="sidebar">
        <div class="sidebar-brand">SDFC BANK</div>
        <ul class="sidebar-menu">
            <li><a href="/" class="active">📊 Overview Monitor</a></li>
            <li><a href="#" onclick="togglePanel('deposit-panel')">💰 Quick Deposit</a></li>
            <li><a href="#" onclick="togglePanel('transfer-panel')">🔄 Transfer Funds</a></li>
            
            <!-- Redirection trigger matching your request to jump over to client home layout -->
            <li><a href="/client-home" class="exit-link">🏠 Client Home Portal</a></li>
        </ul>
    </aside>

    <!-- Main Active Workspace Content Grid -->
    <main class="main-workspace">
        <header class="workspace-header">
            <h2>Operations Management Dashboard</h2>
            <div class="connection-pill">H2 File Connection Live</div>
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
                            <th>Actions</th> <!-- 1. ADDED: Naya Column Header -->
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
                                    <!-- 2. ADDED: Java Scriplets ke anusar Delete Link with dynamic account number -->
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

    <script>
        function togglePanel(panelId) {
            const targets = document.querySelectorAll('.toggle-panel');
            targets.forEach(panel => {
                if (panel.id === panelId) {
                    panel.classList.toggle('hidden-element');
                } else {
                    panel.classList.add('hidden-element');
                }
            });
        }
    </script>
</body>
</html>
