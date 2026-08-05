package com.web.config;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Runs before every request that matches an "/admin-dashboard/**", "/admin/**",
 * "/deleteAccount", or "/findAccount" URL (see WebConfig for the exact mapping).
 * If the visitor doesn't have a logged-in admin session, they get redirected
 * to the login page instead of reaching the actual page/data.
 */
public class AdminLoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {

        HttpSession session = request.getSession(false);
        boolean isLoggedIn = (session != null && session.getAttribute("isAdminLoggedIn") != null);

        if (!isLoggedIn) {
            response.sendRedirect(request.getContextPath() + "/admin/login");
            return false; // stop here - don't let the request reach the controller
        }

        return true; // logged in, continue as normal
    }
}
