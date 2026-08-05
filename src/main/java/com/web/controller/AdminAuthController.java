package com.web.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Handles admin login/logout using a simple session flag.
 * This is a lightweight approach (no Spring Security setup) - good enough
 * for a fresher-level project, but for real production use, Spring Security
 * with proper role-based auth would be the next step.
 */
@Controller
public class AdminAuthController {

    // Values are read from application.properties - change them there.
    @Value("${admin.username}")
    private String adminUsername;

    @Value("${admin.password}")
    private String adminPassword;

    // Show the login form
    @GetMapping("/admin/login")
    public String showLoginPage(ModelMap model) {
        return "AdminLogin";
    }

    // Process login form submission
    @PostMapping("/admin/login")
    public String processLogin(@RequestParam("username") String username,
                                @RequestParam("password") String password,
                                HttpServletRequest request,
                                ModelMap model) {

        if (adminUsername.equals(username) && adminPassword.equals(password)) {
            HttpSession session = request.getSession(true);
            session.setAttribute("isAdminLoggedIn", true);
            return "redirect:/admin-dashboard";
        }

        model.addAttribute("error", "Invalid username or password.");
        return "AdminLogin";
    }

    // Logout - destroy the session
    @GetMapping("/admin/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        return "redirect:/admin/login";
    }
}
